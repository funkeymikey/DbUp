using System;
using System.Configuration;
using System.Data.SqlClient;
using DbUp.Builder;
using DbUp.Engine;
using DbUp.Engine.Output;
using DbUp.Support.SqlServer;

namespace SampleApplication
{
    internal static class Program
    {
        public static void Main(string[] args)
        {
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder(ConfigurationManager.ConnectionStrings["test"].ConnectionString);
            //builder.InitialCatalog = Guid.NewGuid().ToString();
            string connectionString = builder.ToString();

            DbInstallerConfiguration installerConfig = new DbInstallerConfiguration();
            installerConfig.ConnectionString = connectionString;
            installerConfig.Logger = new ConsoleUpgradeLog();
            installerConfig.DatabaseServerAdapter = new MsSqlServerAdapter();
            installerConfig.Journal = new DbVersionJournal();
            installerConfig.ScriptProviders.Add(DbVersionJournal.GetEmbeddedScriptProvder(typeof(Program).Assembly));

            ScriptExecutingEngine executor = new ScriptExecutingEngine(installerConfig);

            
            DbUp.Engine.ScriptExecutingEngine.DbInstallerMode installerMode = ScriptExecutingEngine.DbInstallerMode.Upgrade;
 
            Console.WriteLine("Database connection string: " + connectionString);
            if (executor.DoesDbExist)
            {
                Console.WriteLine("Database exists!");
                Console.WriteLine("current version: " + executor.CurrentDbVersion);

                Console.WriteLine("1: Upgrade");
                Console.WriteLine("2: Reinstall");
                Console.WriteLine("3: Remove");

                string choice = Console.ReadLine();
                if (choice == "1")
                    installerMode = ScriptExecutingEngine.DbInstallerMode.Upgrade;
                else if (choice == "2")
                    installerMode = ScriptExecutingEngine.DbInstallerMode.Create;
                else if (choice == "3")
                    installerMode = ScriptExecutingEngine.DbInstallerMode.Drop;
                else
                    Environment.Exit(0);
            }
            else
            {
                Console.WriteLine("Database does not exist.  Create?");
               
                string choice = Console.ReadLine();
                if (choice.StartsWith("y", StringComparison.InvariantCultureIgnoreCase))
                    installerMode = ScriptExecutingEngine.DbInstallerMode.Create;
                else
                    Environment.Exit(0);
            }

            Console.WriteLine("You have chosen to " + installerMode+ " your database, hit enter to continue");
            Console.ReadLine();

            executor.Execute(installerMode);

            Console.WriteLine("done");
            Console.ReadLine();



            ////installerConfig.ConnectionFactory = () => new SqlConnection(uc.ConnectionString);
            ////installerConfig.Journal = new SqlTableJournal(() => new SqlConnection(connectionString), "DbVersion", new ConsoleUpgradeLog());
            ////installerConfig.Log = new ConsoleUpgradeLog();
            
            ////installerConfig.ScriptProviders.Add(new EmbeddedScriptProvider(typeof(Program).Assembly, (fileName) => fileName.EndsWith(".sql")));
            
            

            //if(executor.DoesDbExist)
            //{
            //    Console.WriteLine("Db Exists.  Press enter to upgrade");
            //    Console.ReadKey();
            // //   executor.Upgrade();
            //}
            //else{
            //    Console.WriteLine("Db does not.  Press enter to install");
            //    executor.Install();
            //}
            ////executor.Upgrade();
            ////


        }
    }
}
