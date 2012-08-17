using System.Data;

namespace DbUp
{
    public static class CommandExtensions
    {
        public static void AddParameterValue(this IDbCommand command, string parameterName, object parameterValue)
        {
            IDbDataParameter parm = command.CreateParameter();
            parm.ParameterName = parameterName;
            parm.Value = parameterValue;
            command.Parameters.Add(parm);
        }
    }
}
