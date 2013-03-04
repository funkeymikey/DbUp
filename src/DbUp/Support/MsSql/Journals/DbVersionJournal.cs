using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using DbUp.Engine;
using DbUp.Engine.Output;
using DbUp.ScriptProviders;

namespace DbUp.Support.SqlServer
{
    /// <summary>
    /// An implementation of the <see cref="IJournal"/> interface which tracks version numbers for a 
    /// SQL Server database using a table called dbo.DbVersion which resides within the databse itself.
    /// </summary>
    public class DbVersionJournal : IJournal
    {
        const string VERSION_REGEX = @"(?<major>\d+)\.(?<minor>\d+)\.(?<build>\d+)\.(?<revision>\d+)";

        public static EmbeddedScriptProvider GetEmbeddedScriptProvder(Assembly assembly)
        {
            Regex regex = new Regex(VERSION_REGEX);

            Func<string, bool> filter = (fileName) => regex.IsMatch(fileName);

            EmbeddedScriptProvider pro = new EmbeddedScriptProvider(assembly, filter);
            return pro;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="DbVersionJournal"/> class.
        /// </summary>
        /// </example>
        public DbVersionJournal(){}

        /// <summary>
        /// Recalls the version number of the database.
        /// </summary>
        /// <returns>All executed scripts.</returns>
        public IDatabaseVersion GetVersion(Func<IDbConnection> connectionFactory)
        {
            var exists = this.DoesVersionTableExist(connectionFactory);
            if (!exists)
            {
                return new DbVersion();
            }

            using (var connection = connectionFactory())
            {
                using (var command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "GetDbVersion";
                    connection.Open();

                    using (IDataReader reader = command.ExecuteReader())
                    {
                        if (!reader.Read())
                            return new DbVersion();

                        return new DbVersion(
                                        (Int16)reader["Major"],
                                        (Int16)reader["Minor"],
                                        (Int16)reader["Build"],
                                        (Int16)reader["Revision"],
                                        (string)reader["username"],
                                        (string)reader["comments"]);
                    }
                }
            }

        }

        /// <summary>
        /// Records a database upgrade for a database specified in a given connection string.
        /// </summary>
        /// <param name="script">The script.</param>
        public void UpdateVersion(SqlScript executedScript, Func<IDbConnection> connectionFactory, IUpgradeLog log)
        {
            if (executedScript.IsAdminScript)
                return;

            DbVersion version = this.GetDbVersionFromScript(executedScript);


            using (IDbConnection connection = connectionFactory())
            {
                using (IDbCommand command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "InsertDbVersion";
                   
                    command.AddParameterValue("@major", version.Major);
                    command.AddParameterValue("@minor", version.Minor);
                    command.AddParameterValue("@revision", version.Revision);
                    command.AddParameterValue("@build", version.Build);
                    command.AddParameterValue("@username", version.Username);
                    command.AddParameterValue("@comments", version.Comments);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        public IEnumerable<SqlScript> GetScriptsToExecute(IEnumerable<SqlScript> allScripts, Func<IDbConnection> connectionFactory)
        {
            IEnumerable<SqlScript> scriptsToExecute = allScripts.Where(script => GetDbVersionFromScript(script).CompareTo(GetVersion(connectionFactory)) > 0).ToList();
            return scriptsToExecute;
        }

        protected virtual DbVersion GetDbVersionFromScript(SqlScript script)
        {
            //get the version numbers
            Regex versionRegex = new Regex(VERSION_REGEX);
            Match match = versionRegex.Match(script.Name);
            short major = short.Parse(match.Groups["major"].Value);
            short minor = short.Parse(match.Groups["minor"].Value);
            short build = short.Parse(match.Groups["build"].Value);
            short revision = short.Parse(match.Groups["revision"].Value);

            //match on all the comments and build up a string
            StringBuilder sb = new StringBuilder();
            Regex commentRegex = new Regex(@"<VersionComment>(?<comment>.*)</VersionComment>");
            MatchCollection commentMatches = commentRegex.Matches(script.Contents);
            foreach (Match m in commentMatches)
                sb.Append(m.Groups["comment"].Value + "\r\n");

            //i don't want to store blank strings. Turn them null if needed
            string comments = sb.ToString();
            if (string.IsNullOrWhiteSpace(comments))
                comments = null;

            DbVersion version = new DbVersion(major, minor, build, revision, Environment.UserName, comments);
            return version;
        }

        protected virtual bool DoesVersionTableExist(Func<IDbConnection> connectionFactory)
        {
            try
            {
                using (var connection = connectionFactory())
                {
                    using (var command = connection.CreateCommand())
                    {
                        command.CommandText = string.Format("SELECT count(*) FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DbVersion]') AND type in (N'U')");
                        command.CommandType = CommandType.Text;
                        connection.Open();
                        int tableCount = (int)command.ExecuteScalar();
                        if (tableCount == 1)
                            return true;
                    }
                }
            }
            catch { }
            return false;

        }

        public IEnumerable<SqlScript> OrderScripts(IEnumerable<SqlScript> scriptsToExecute)
        {
            IEnumerable<SqlScript> orderedScripts = scriptsToExecute.OrderBy(x => GetDbVersionFromScript(x));
            return orderedScripts;
        }
    }
}


