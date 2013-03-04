using System;

namespace DbUp.Engine
{
    public interface IDatabaseVersion : IComparable<IDatabaseVersion>
    {
        /// <summary>
        /// Gets a string representation of this database version
        /// </summary>
        /// <returns></returns>
        string VersionString { get; }
    }
}
