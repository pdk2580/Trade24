using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.Utilities.Logger
{
    public class LogManager
    {
        public static void Log(LogType logType, string message)
        {
            new Log().LogMessage(logType, message);
        }
    }
}
