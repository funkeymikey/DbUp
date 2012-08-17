using DbUp.Engine;

namespace DbUp.ScriptProviders
{
    public class MsSqlDropScriptProvider : EmbeddedScriptProvider
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="EmbeddedScriptProvider"/> class.
        /// </summary>
        /// <param name="assembly">The assembly.</param>
        /// <param name="filter">The filter.</param>
        public MsSqlDropScriptProvider()
            : base(
                typeof(MsSqlDropScriptProvider).Assembly,
                (name) => name.Contains("MsSql.Drop"))
        { }

        protected override SqlScript ReadResourceAsScript(string scriptName)
        {
            SqlScript script = base.ReadResourceAsScript(scriptName);
            script.IsAdminScript = true;
            return script;
        }
    }
}
