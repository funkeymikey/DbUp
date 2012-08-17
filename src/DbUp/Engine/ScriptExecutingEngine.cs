using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using DbUp.Builder;
using DbUp.Engine.Output;
using DbUp.ScriptProviders;

namespace DbUp.Engine
{
    /// <summary>
    /// This class orchestrates the database upgrade process.
    /// </summary>
    public class ScriptExecutingEngine
    {
        private IUpgradeLog _logger;
        private string _connectionString;
        private IJournal _journal;
        private IDatabaseServerAdapter _databaseServerAdapter;
        private List<IScriptProvider> _scriptProviders;
        private List<IScriptPreprocessor> _scriptPreProcessors;
        private Dictionary<string, string> _variables;

        /// <summary>
        /// Initializes a new instance of the <see cref="ScriptExecutingEngine"/> class.
        /// </summary>
        /// <param name="configuration">The configuration.</param>
        public ScriptExecutingEngine(DbInstallerConfiguration configuration)
        {
            _connectionString = configuration.ConnectionString;
            _journal = configuration.Journal;
            _databaseServerAdapter = configuration.DatabaseServerAdapter;
            _logger = configuration.Logger;
            _scriptProviders = configuration.ScriptProviders;
            _scriptPreProcessors = configuration.ScriptPreprocessors;
            _variables = configuration.Variables;
        }

        /// <summary>
        /// Performs the database upgrade.
        /// </summary>
        public DatabaseInstallationResult Execute(DbInstallerMode mode)
        {
            IEnumerable<SqlScript> scriptsToExecute = GetScriptsToExecute(mode);

            #region Some Logging
            _logger.WriteInformation("Scripts to execute");
            foreach (SqlScript script in scriptsToExecute)
                _logger.WriteInformation("\t" + script.Name);
            #endregion

            List<SqlScript> executedScripts = new List<SqlScript>();

            try
            {
                foreach (SqlScript script in scriptsToExecute)
                {
                    _databaseServerAdapter.Execute(script, _connectionString, _logger, _variables, _scriptPreProcessors);

                    Func<IDbConnection> connectionBuilder = _databaseServerAdapter.GetConnectionFactory(_connectionString);

                    //have the journal add an entry now that we've executed the script
                    _journal.UpdateVersion(script, connectionBuilder, _logger);
                    executedScripts.Add(script);
                }
            }
            catch (Exception ex)
            {
                return new DatabaseInstallationResult(executedScripts, false, ex);
            }

            return new DatabaseInstallationResult(executedScripts, true, null);
        }

        protected virtual IEnumerable<SqlScript> GetScriptsToExecute(DbInstallerMode mode)
        {
            IEnumerable<SqlScript> scriptsToExecute = new List<SqlScript>();

            if (mode == DbInstallerMode.Create)
            {
                scriptsToExecute = scriptsToExecute.Concat(this.GetDropScripts());
                scriptsToExecute = scriptsToExecute.Concat(this.GetCreateScripts());
                scriptsToExecute = scriptsToExecute.Concat(this.GetUpgradeScripts(mode));
            }
            else if (mode == DbInstallerMode.Upgrade)
            {
                scriptsToExecute = scriptsToExecute.Concat(this.GetUpgradeScripts(mode));
            }
            else if (mode == DbInstallerMode.Drop)
            {
                scriptsToExecute = scriptsToExecute.Concat(this.GetDropScripts());
            }
            return scriptsToExecute;
        }

        protected virtual IEnumerable<SqlScript> GetDropScripts()
        {
            MsSqlDropScriptProvider pro = new MsSqlDropScriptProvider();
            return pro.GetScripts();
        }
        protected virtual IEnumerable<SqlScript> GetCreateScripts()
        {
            MsSqlCreateScriptProvider pro = new MsSqlCreateScriptProvider();
            return pro.GetScripts();
        }
        protected virtual IEnumerable<SqlScript> GetUpgradeScripts(DbInstallerMode mode)
        {
            IEnumerable<SqlScript> scriptsToExecute = _scriptProviders.SelectMany(scriptProvider => scriptProvider.GetScripts());

            if(mode == DbInstallerMode.Upgrade)
                scriptsToExecute = _journal.GetScriptsToExecute(scriptsToExecute, _databaseServerAdapter.GetConnectionFactory(_connectionString));

            return scriptsToExecute;
        }




        //    var executed = new List<SqlScript>();
        //    try
        //    {
        //        configuration.Log.WriteInformation("Beginning database upgrade");

        //        var scriptsToExecute = GetScriptsToExecute(mode);

        //        if (scriptsToExecute.Count == 0)
        //        {
        //            configuration.Log.WriteInformation("No new scripts need to be executed - completing.");
        //            return new DatabaseUpgradeResult(executed, true, null);
        //        }

        //        foreach (var script in scriptsToExecute)
        //        {
        //            configuration.ScriptExecutor.Execute(script, this.configuration.ConnectionFactory, this.configuration.Log, configuration.Variables, null);
        //            configuration.Journal.UpdateVersion(script, configuration.ConnectionFactory, configuration.Log);

        //            executed.Add(script);
        //        }

        //        configuration.Log.WriteInformation("Upgrade successful");
        //        return new DatabaseUpgradeResult(executed, true, null);
        //    }
        //    catch (Exception ex)
        //    {
        //        configuration.Log.WriteError("Upgrade failed due to an unexpected exception:\r\n{0}", ex.ToString());
        //        return new DatabaseUpgradeResult(executed, false, ex);
        //    }
        //}



        public enum DbInstallerMode
        {
            Create,
            Upgrade,
            Drop
        }


        public bool DoesDbExist
        {
            get { return _databaseServerAdapter.DoesDbExist(_connectionString); }
        }

        /// <summary>
        /// Determines whether the database is out of date and can be upgraded.
        /// </summary>
        public bool IsUpgradeRequired
        {
            get { return this.GetUpgradeScripts(DbInstallerMode.Upgrade).Count() != 0; }
        }

        public IDatabaseVersion CurrentDbVersion { get { return _journal.GetVersion(_databaseServerAdapter.GetConnectionFactory(_connectionString)); } }
    }
}