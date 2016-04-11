using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using Trade24.BO;
using Trade24.DAL;

namespace Trade24.BLL
{
    public class UploadedFileBLL
    {
        public static int CreateUploadedFile(UploadedFileBO uploadedFile)
        {
            return new UploadedFileDAL().CreateUploadedFile(uploadedFile);
        }

        public static IEnumerable<UploadedFileBO> GetUploadedFile(int requestId)
        {
            return new UploadedFileDAL().GetUploadedFile(requestId);
        }

        public static string GetUploadedFilePath(int requestId)
        {
            string path = string.Empty;

            if (GetUploadedFile(requestId).Count() != 0)
            { 
                UploadedFileBO uploadedFile = GetUploadedFile(requestId).First();
                RequestBO request = RequestBLL.GetRequest(uploadedFile.RequestID);
                path = "/Upload/" + request.UploaderID.ToString() + "/" + uploadedFile.Name;
            }

            return path;
        }
    }
}
