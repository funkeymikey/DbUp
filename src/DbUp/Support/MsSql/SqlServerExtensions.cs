//using System;
//using System.Data;
//using System.Data.SqlClient;
//using DbUp.Builder;
//using DbUp.Support.SqlServer;
//using System.Configuration;

///// <summary>
///// Configuration extension methods for SQL Server.
///// </summary>
//namespace DbUp
//{
//    // ReSharper disable CheckNamespace
//    public static class SqlServerExtensions
//    // ReSharper restore CheckNamespace
//    {

//        /// <summary>
//        /// Creates an upgrader for SQL Server databases.
//        /// </summary>
//        /// <param name="supported">Fluent helper type.</param>
//        /// <param name="connectionString">The connection string.</param>
//        /// <param name="schema">The SQL schema name to use. Defaults to 'dbo'.</param>
//        /// <returns>
//        /// A builder for a database upgrader designed for SQL Server databases.
//        /// </returns>
//        public static UpgradeEngineBuilder SqlDatabase(this SupportedDatabases supported, string connectionString, string schema = null)
//        {
//            return SqlDatabase(supported, () => new SqlConnection(connectionString), schema);
//        }

//        /// <summary>
//        /// Creates an upgrader for SQL Server databases.
//        /// </summary>
//        /// <param name="supported">Fluent helper type.</param>
//        /// <param name="connectionFactory">The connection factory.</param>
//        /// <param name="schema">The SQL schema name to use. Defaults to 'dbo'.</param>
//        /// <returns>
//        /// A builder for a database upgrader designed for SQL Server databases.
//        /// </returns>
//        public static UpgradeEngineBuilder SqlDatabase(this SupportedDatabases supported, Func<IDbConnection> connectionFactory, string schema = null)
//        {
//            var builder = new UpgradeEngineBuilder();
//            builder.Configure(c => c.ConnectionFactory = connectionFactory);
//            builder.Configure(c => c.ScriptExecutor = new SqlScriptExecutor());
//            builder.Configure(c => c.Journal = new SqlTableJournal(c.ConnectionFactory, "SchemaVersions", c.Log));
//            return builder;
//        }

//        /// <summary>
//        /// Tracks the list of executed scripts in a SQL Server table.
//        /// </summary>
//        /// <param name="builder">The builder.</param>
//        /// <param name="schema">The schema.</param>
//        /// <param name="table">The table.</param>
//        /// <returns></returns>
//        public static UpgradeEngineBuilder JournalToSqlTable(this UpgradeEngineBuilder builder, string schema, string table)
//        {
//            builder.Configure(c => c.Journal = new SqlTableJournal(c.ConnectionFactory, table, c.Log));
//            return builder;
//        }
//    }
//}