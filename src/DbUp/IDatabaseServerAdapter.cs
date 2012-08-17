using System;
using System.Collections.Generic;
using System.Data;
using DbUp.Engine.Output;

namespace DbUp.Engine
{
    /// <summary>
    /// This interface is implemented by classes that execute upgrade scripts against a database.
    /// </summary>
    public interface IDatabaseServerAdapter
    {

        /// <summary>
        /// Executes the specified script against a database at a given connection string.
        /// </summary>
        /// <param name="script">The script.</param>
        /// <param name="variables">Variables to replace in the script</param>
        void Execute(SqlScript script, string connectionString, IUpgradeLog log, IDictionary<string, string> variables = null, IEnumerable<IScriptPreprocessor> scriptPreprocessors = null);

        /// <summary>
        /// Timeout for each section of the script in seconds. If not set, the default timeout for the executor is used.
        /// </summary>
        int? ExecutionTimeoutSeconds { get; set; }

        Func<IDbConnection> GetConnectionFactory(string connectionString);

        bool DoesDbExist(string _connectionString);
    }
}