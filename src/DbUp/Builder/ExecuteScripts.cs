
namespace DbUp.Builder
{
    /// <summary>
    /// A fluent builder for creating database upgraders.
    /// </summary>
    public static class ExecuteScripts
    {
        private static readonly SupportedDatabases Instance = new SupportedDatabases();

        /// <summary>
        /// Returns the databases supported by DbUp.
        /// </summary>
        public static SupportedDatabases To
        {
            get { return Instance; }
        }
    }
}