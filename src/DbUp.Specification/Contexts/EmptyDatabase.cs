﻿using System.Collections.Generic;
using DbUp.Builder;
using DbUp.Engine;
using DbUp.Engine.Output;
using NUnit.Framework;
using NSubstitute;

namespace DbUp.Specification.Contexts
{
    public abstract class EmptyDatabase
    {
        public ScriptExecutingEngine DbUpgrader;
        public IScriptExecutor ScriptExecutor;
        public IJournal VersionTracker;
        public IScriptProvider ScriptProvider;
        public IUpgradeLog Log;
        public IEnumerable<SqlScript> AllScripts;
        public IScriptPreprocessor ScriptPreprocessor;
        public const string ConnectionString = "sqlite:memory:";

        [SetUp]
        public virtual void BeforeEach()
        {
            ScriptProvider = Substitute.For<IScriptProvider> ();
			VersionTracker = Substitute.For<IJournal> ();
			ScriptExecutor = Substitute.For<IScriptExecutor> ();
            ScriptPreprocessor = Substitute.For<IScriptPreprocessor>();

			Log = Substitute.For<IUpgradeLog> ();

            var config = new UpgradeConfiguration();

            config.ScriptPreprocessors.Add(ScriptPreprocessor);
            config.ScriptProviders.Add(ScriptProvider);
            config.ScriptExecutor = ScriptExecutor;
            config.Journal = VersionTracker;
            config.Log = Log;

            DbUpgrader = new ScriptExecutingEngine(config);
        }

        [TearDown]
        public virtual void AfterEach()
        {
            ScriptProvider = null;
            VersionTracker = null;
            ScriptExecutor = null;
            Log = null;
            DbUpgrader = null;
        }
    }
}
