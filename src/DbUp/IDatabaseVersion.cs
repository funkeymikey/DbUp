using System;

namespace DbUp.Engine
{
    public interface IDatabaseVersion : IComparable<IDatabaseVersion>
    {
        string GetVersionString();
    }
}
