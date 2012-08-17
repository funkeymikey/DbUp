using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using DbUp.Engine;
using DbUp.Engine.Output;
using DbUp.Engine.Preprocessors;
using DbUp.Helpers;

namespace DbUp.Support.SqlServer
{
    /// <summary>
    /// An implementation of the IScriptExecutor interface that executes against a SQL Server 
    /// database.
    /// </summary>
    public class MsSqlServerAdapter : IDatabaseServerAdapter
    {

        /// <summary>
        /// SQLCommand Timeout in seconds. If not set, the default SQLCommand timeout is not changed.
        /// </summary>
        public int? ExecutionTimeoutSeconds { get; set; }

        /// <summary>
        /// Executes the specified script against a database at a given connection string.
        /// </summary>
        /// <param name="script">The script.</param>
        /// <param name="variables">Variables to replace in the script</param>
        public virtual void Execute(SqlScript script, string connectionString, IUpgradeLog log, IDictionary<string, string> variables = null, IEnumerable<IScriptPreprocessor> scriptPreprocessors = null)
        {
            log.WriteInformation("Executing SQL Server script '{0}'", script.Name);
            
            if (script.IsAdminScript)
            {
                //need the databaseName variable for the add/drop scripts
                variables["databaseName"] = this.GetDatabaseName(connectionString);

                //now set the connection string to point to the master database
                connectionString = this.GetMasterConnectionString(connectionString);
            }

            //run all the pre processors/variable replacements
            string scriptContents = this.RunPreProcessors(script, variables, scriptPreprocessors);

            //figure out if we should use transactions or not
            bool useTransactions = true;
            if (scriptContents.Contains("<DisableTransaction>true</DisableTransaction>")) useTransactions = false;

            //break the script into its parts
            IEnumerable<string> scriptStatements = this.SplitByGoStatements(scriptContents);

            //this is used for logging which block is being executed
            int currentBlockNumber = -1;

            //open the connection and execute
            try
            {
                using (IDbConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    //use a transaction if we're supposed to
                    if (useTransactions)
                    {
                        using (IDbTransaction transaction = connection.BeginTransaction())
                        {                            
                            this.ExecuteScriptStatements(scriptStatements, connection, out currentBlockNumber, transaction);

                            transaction.Commit();
                        }
                    }
                    else
                    {
                        ExecuteScriptStatements(scriptStatements, connection, out currentBlockNumber);
                    }
                }
            }
            catch (SqlException sqlException)
            {
                log.WriteInformation("SQL exception has occured in script: '{0}'", script.Name);
                log.WriteError("Script block number: {0}; Block line {1}; Message: {2}", currentBlockNumber, sqlException.LineNumber, sqlException.Procedure, sqlException.Number, sqlException.Message);
                log.WriteError(sqlException.ToString());
                throw;
            }
            catch (DbException dbException)
            {
                log.WriteInformation("DB exception has occured in script: '{0}'", script.Name);
                log.WriteError("Script block number: {0}; Error code {1}; Message: {2}", currentBlockNumber, dbException.ErrorCode, dbException.Message);
                log.WriteError(dbException.ToString());
                throw;
            }
            catch (Exception ex)
            {
                log.WriteInformation("Exception has occured in script: '{0}'", script.Name);
                log.WriteError(ex.ToString());
                throw;
            }
        }

        protected virtual void ExecuteScriptStatements(IEnumerable<string> scriptStatements,  IDbConnection connection, out int currentBlockNumber, IDbTransaction transaction = null)
        {
            currentBlockNumber = -1;
            foreach (string statement in scriptStatements)
            {
                currentBlockNumber++;
                IDbCommand command = connection.CreateCommand();
                command.CommandText = statement;
                if (transaction != null) command.Transaction = transaction;
                if (ExecutionTimeoutSeconds != null)
                    command.CommandTimeout = ExecutionTimeoutSeconds.Value;
                command.ExecuteNonQuery();
            }
        }

        public Func<IDbConnection> GetConnectionFactory(string connectionString)
        {
            return () => new SqlConnection(connectionString);
        }

        public bool DoesDbExist(string connectionString)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string masterConnectionString = this.GetMasterConnectionString(connectionString);
                string databaseName = this.GetDatabaseName(connectionString);

                AdHocSqlRunner sqlRunner = new AdHocSqlRunner(() => new SqlConnection(masterConnectionString)).WithVariable("databaseName", databaseName);

                int countDb = (int)sqlRunner.ExecuteScalar("select count(*) from sys.databases where name = '$databaseName$'");
                if (countDb == 1)
                    return true;

                return false;
            }
        }


        protected virtual IEnumerable<string> SplitByGoStatements(string script)
        {
            IEnumerable<string> scriptStatements =
                Regex.Split(script, "^\\s*GO\\s*$", RegexOptions.IgnoreCase | RegexOptions.Multiline)
                    .Select(x => x.Trim())
                    .Where(x => x.Length > 0);

            return scriptStatements;
        }

        protected virtual string RunPreProcessors(SqlScript script, IDictionary<string, string> variables, IEnumerable<IScriptPreprocessor> scriptPreprocessors)
        {
            string contents = script.Contents;

            //do variable replacement if necessary
            contents = new VariableSubstitutionPreprocessor(variables).Process(contents);

            //run all the script pre processors
            contents = scriptPreprocessors.Aggregate(contents, (current, additionalScriptPreprocessor) => additionalScriptPreprocessor.Process(current));

            return contents;
        }

        protected virtual string GetDatabaseName(string connectionString)
        {
            SqlConnectionStringBuilder connectionStringBuilder = new SqlConnectionStringBuilder(connectionString);

            return connectionStringBuilder.InitialCatalog;
        }

        protected virtual string GetMasterConnectionString(string connectionString)
        {
            SqlConnectionStringBuilder connectionStringBuilder = new SqlConnectionStringBuilder(connectionString);

            connectionStringBuilder.InitialCatalog = "master";

            return connectionStringBuilder.ToString();
        }

    }
}
