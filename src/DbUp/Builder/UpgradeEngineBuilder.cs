using System;
using System.Collections.Generic;
using DbUp.Engine;

namespace DbUp.Builder
{
    /// <summary>
    /// Builds a UpgradeEngine by accepting a list of callbacks to execute. For custom configuration, you should 
    /// implement extension methods on top of this class.
    /// </summary>
    public class UpgradeEngineBuilder
    {
        private readonly List<Action<DbInstallerConfiguration>> callbacks = new List<Action<DbInstallerConfiguration>>();

        /// <summary>
        /// Adds a callback that will be run to configure the upgrader when Build is called.
        /// </summary>
        /// <param name="configuration">The configuration.</param>
        public void Configure(Action<DbInstallerConfiguration> configuration)
        {
            callbacks.Add(configuration);
        }

        /// <summary>
        /// Creates an UpgradeEngine based on this configuration.
        /// </summary>
        /// <returns></returns>
        public ScriptExecutingEngine Build()
        {
            var config = new DbInstallerConfiguration();
            foreach (var callback in callbacks)
            {
                callback(config);
            }

            config.Validate();
            
            return new ScriptExecutingEngine(config);
        }
    }
}