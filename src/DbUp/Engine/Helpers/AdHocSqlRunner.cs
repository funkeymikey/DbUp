﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using DbUp.Engine;
using DbUp.Engine.Preprocessors;

namespace DbUp.Helpers
{
    /// <summary>
    /// A helper for executing SQL queries easily.
    /// </summary>
    public class AdHocSqlRunner
    {
        private readonly Func<IDbConnection> connectionFactory;
        private readonly IScriptPreprocessor[] additionalScriptPreprocessors;
        private readonly Dictionary<string, string> variables = new Dictionary<string, string>();
        private readonly Func<bool> variablesEnabled;

        /// <summary>
        /// Initializes a new instance of the <see cref="AdHocSqlRunner"/> class.
        /// </summary>
        /// <param name="connectionFactory">The connection factory.</param>
        /// <param name="schema">The schema.</param>
        /// <param name="additionalScriptPreprocessors">The additional script preprocessors.</param>
        /// <remarks>Sets the <c>variablesEnabled</c> setting to <c>true</c>.</remarks>
        public AdHocSqlRunner(Func<IDbConnection> connectionFactory, params IScriptPreprocessor[] additionalScriptPreprocessors)
            : this(connectionFactory, () => true, additionalScriptPreprocessors)
        { }

        /// <summary>
        /// Initializes a new instance of the <see cref="AdHocSqlRunner"/> class.
        /// </summary>
        /// <param name="connectionFactory">The connection factory.</param>
        /// <param name="schema">The schema.</param>
        /// <param name="variablesEnabled">Function indicating <c>true</c> if variables should be replaced, <c>false</c> otherwise.</param>
        /// <param name="additionalScriptPreprocessors">The additional script preprocessors.</param>
        public AdHocSqlRunner(Func<IDbConnection> connectionFactory, Func<bool> variablesEnabled, params IScriptPreprocessor[] additionalScriptPreprocessors)
        {
            this.connectionFactory = connectionFactory;
            this.variablesEnabled = variablesEnabled;
            this.additionalScriptPreprocessors = additionalScriptPreprocessors;
        }

        /// <summary>
        /// Adds a variable to be substituted on Adhoc script
        /// </summary>
        /// <param name="variableName"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public AdHocSqlRunner WithVariable(string variableName, string value)
        {
            variables.Add(variableName, value);
            return this;
        }


        /// <summary>
        /// Executes a scalar query.
        /// </summary>
        /// <param name="query">The query.</param>
        /// <param name="parameters">The parameters.</param>
        /// <returns></returns>
        public object ExecuteScalar(string query, params Func<string, object>[] parameters)
        {
            object result = null;
            Execute(query, parameters, 
                    command =>
                        {
                            result = command.ExecuteScalar();
                        });
            return result;
        }

        /// <summary>
        /// Executes a query that returns the number of records modified.
        /// </summary>
        /// <param name="query">The query.</param>
        /// <param name="parameters">The parameters.</param>
        /// <returns></returns>
        public int ExecuteNonQuery(string query, params Func<string, object>[] parameters)
        {
            var result = 0;
            Execute(query, parameters,
                    command =>
                        {
                            result = command.ExecuteNonQuery();
                        });
            return result;
        }

        /// <summary>
        /// Executes a select query or procedure.
        /// </summary>
        /// <param name="query">The query.</param>
        /// <param name="parameters">The parameters.</param>
        /// <returns></returns>
        public List<Dictionary<string, string>> ExecuteReader(string query, params Func<string, object>[] parameters)
        {
            var results = new List<Dictionary<string, string>>();
            Execute(query, parameters,
                    command =>
                        {
                            var reader = command.ExecuteReader();
                            while (reader.Read())
                            {
                                var line = new Dictionary<string, string>();
                                for (int i = 0; i < reader.FieldCount; i++)
                                {
                                    var name = reader.GetName(i);
                                    var value = reader.GetValue(i);
                                    value = value == DBNull.Value ? null : value.ToString();
                                    line.Add(name, (string)value);
                                }
                                results.Add(line);
                            }
                        });

            return results;
        }

        private void Execute(string commandText, IEnumerable<Func<string, object>> parameters, Action<IDbCommand> executor)
        {
            commandText = Preprocess(commandText);
            using (var connection = connectionFactory())
            using (var command = connection.CreateCommand())
            {
                command.CommandText = commandText;

                foreach (var param in parameters)
                {
                    var key = param.Method.GetParameters()[0].Name;
                    var value = param(null);
                    var p = command.CreateParameter();
                    p.ParameterName = key;
                    p.Value = value;
                    command.Parameters.Add(p);
                }

                connection.Open();

                executor(command);
            }
        }

        private string Preprocess(string query)
        {
            //if (string.IsNullOrEmpty(Schema))
            //    query = new StripSchemaPreprocessor().Process(query);
            //if (!string.IsNullOrEmpty(Schema) && !variables.ContainsKey("schema"))
            //    variables.Add("schema", Schema);
            if (variablesEnabled())
                query = new VariableSubstitutionPreprocessor(variables).Process(query);
            query = additionalScriptPreprocessors.Aggregate(query, (current, additionalScriptPreprocessor) => additionalScriptPreprocessor.Process(current));
            return query;
        }
    }
}