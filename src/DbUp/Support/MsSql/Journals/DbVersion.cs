using DbUp.Engine;
using System;

namespace DbUp
{
    /// <summary>
    /// Represents a database version that's stored in the db, in the DbVersion table
    /// </summary>
    public class DbVersion : IDatabaseVersion
    {
        /// <summary>
        /// A DbVersion is just a way to store a version
        /// </summary>
        private Version _underlyingVersion;

        /// <summary>
        /// string representation of this database version
        /// </summary>
        public string VersionString { get { return _underlyingVersion.ToString(); } }

        /// <summary>The Major portion of this DbVersion</summary>
        public int Major { get { return _underlyingVersion.Major; } }
        /// <summary>The Minor portion of this DbVersion</summary>
        public int Minor { get { return _underlyingVersion.Minor; } }
        /// <summary>The Build portion of this DbVersion</summary>
        public int Build { get { return _underlyingVersion.Build; } }
        /// <summary>The Revision portion of this DbVersion</summary>
        public int Revision { get { return _underlyingVersion.Revision; } }
        /// <summary>The Username that executed this DbVersion</summary>
        public string Username { get; private set; }
        /// <summary>The Comments (if any) associated with this DbVersion</summary>
        public string Comments { get; private set; }

        /// <summary>
        /// Creates a new DbVersion with the specified values
        /// </summary>
        /// <param name="major"></param>
        /// <param name="minor"></param>
        /// <param name="build"></param>
        /// <param name="revision"></param>
        public DbVersion(short major = 0, short minor = 0, short build = 0, short revision = 0)
        {
            _underlyingVersion = new Version(major, minor, build, revision);
        }

        /// <summary>
        /// Creates a DbVersion with the specified values
        /// </summary>
        /// <param name="major"></param>
        /// <param name="minor"></param>
        /// <param name="build"></param>
        /// <param name="revision"></param>
        /// <param name="username"></param>
        /// <param name="comments"></param>
        public DbVersion(short major, short minor, short build, short revision, string username, string comments = null)
            : this(major, minor, build, revision)
        {
            this.Username = username;
            this.Comments = comments;
        }

        /// <summary>
        /// compares this IDbVersion to another
        /// </summary>
        /// <param name="other"></param>
        /// <returns></returns>
        public int CompareTo(IDatabaseVersion other)
        {
            Version otherVersion = new Version(other.VersionString);

            int comparisonResult = this._underlyingVersion.CompareTo(otherVersion);
            return comparisonResult;
        }

        /// <summary>
        /// string representation of this database version
        /// </summary>
        /// <returns></returns>
        public override string ToString()
        {
            return this.VersionString;
        }
    }
}
