
namespace DbUp.Engine
{
    /// <summary>
    /// Represents a script containing SQL statments. 
    /// </summary>
    public class SqlScript
    {
        public virtual bool IsAdminScript { get; set; }

        /// <summary>
        /// Gets the contents of the script.
        /// </summary>
        /// <value></value>
        public virtual string Contents { get; set; }

        /// <summary>
        /// Gets the name of the script.
        /// </summary>
        /// <value></value>
        public virtual string Name { get; set; }


        /// <summary>
        /// Initializes a new instance of the <see cref="SqlScript"/> class.
        /// </summary>
        /// <param name="name">The name.</param>
        /// <param name="contents">The contents.</param>
        public SqlScript(string name, string contents, bool isAdminScript = false)
        {
            this.Name = name;
            this.Contents = contents;
            this.IsAdminScript = isAdminScript;
        }

        
    }
}