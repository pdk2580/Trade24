using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Hosting;
using Trade24.Utilities.Logger;

namespace Trade24.Utilities.Logger
{
    public class Log
    {
        private string rootPath = HostingEnvironment.ApplicationPhysicalPath;
        private string filePath = Definition.FILE_PATH;
        private string fileName = DateTime.Now.ToString("yyyyMMdd") + " Log.txt";

        public void LogMessage(LogType logType, string message)
        {
            WriteMessage(logType, message);
        }

        private void WriteMessage(LogType logType, string message)
        {
            using (StreamWriter sw = new StreamWriter(rootPath + filePath + fileName, true))
            {
                sw.WriteLine(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + " " + logType.ToString() + " " + message);
                sw.Close();
            }
        }
    }
}
