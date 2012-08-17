using DbUp.Engine;

namespace DbUp.ScriptProviders
{
    public class MsSqlCreateScriptProvider : EmbeddedScriptProvider
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="EmbeddedScriptProvider"/> class.
        /// </summary>
        /// <param name="assembly">The assembly.</param>
        /// <param name="filter">The filter.</param>
        public MsSqlCreateScriptProvider()
            : base(
                typeof(MsSqlCreateScriptProvider).Assembly,
                (name) => name.Contains("MsSql.Create"))
        { }

        protected override Engine.SqlScript ReadResourceAsScript(string scriptName)
        {
            SqlScript script = base.ReadResourceAsScript(scriptName);
            script.IsAdminScript = true;
            return script;
        }
    }
}
