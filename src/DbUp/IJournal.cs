using System;
using System.Collections.Generic;
using System.Data;
using DbUp.Engine.Output;

namespace DbUp.Engine
{
    /// <summary>
    /// This interface is provided to allow different projects to store version information differently.
    /// </summary>
    public interface IJournal
    {
        /// <summary>
        /// Recalls the version number of the database.
        /// </summary>
        /// <returns></returns>
        IDatabaseVersion GetVersion(Func<IDbConnection> connectionFactory);

        /// <summary>
        /// Records an upgrade script for a database.
        /// </summary>
        /// <param name="script">The script.</param>
        void UpdateVersion(SqlScript executedScript, Func<IDbConnection> connectionFactory, IUpgradeLog log);


        IEnumerable<SqlScript> GetScriptsToExecute(IEnumerable<SqlScript> allScripts, Func<IDbConnection> connectionFactory);
    }
}