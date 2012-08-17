using System;
using DbUp.Engine;

namespace DbUp
{
    public class DbVersion : IDatabaseVersion
    {
        public short Major;
        public short Minor;
        public short Build;
        public short Revision;
        public string Username;
        public string Comments;

        public DbVersion(short major = 0, short minor = 0, short build = 0, short revision = 0)
        {
            this.Major = major;
            this.Minor = major;
            this.Build = build;
            this.Revision = revision;
        }

        public DbVersion(short major, short minor, short build, short revision, string username, string comments = null)
        {
            this.Major = major;
            this.Minor = minor;
            this.Build = build;
            this.Revision = revision;
            this.Username = username;
            this.Comments = comments;
        }

        public int CompareTo(IDatabaseVersion other)
        {
            string otherVersionString = other.GetVersionString();

            Version myVersion = new Version(Major, Minor, Build, Revision);
            Version otherVersion = new Version(other.GetVersionString());

            return myVersion.CompareTo(otherVersion);
        }

        public string GetVersionString()
        {
            return new Version(Major, Minor, Build, Revision).ToString();
        }

        public override string ToString()
        {
            return new Version(Major, Minor, Build, Revision).ToString();
        }
    }
}
