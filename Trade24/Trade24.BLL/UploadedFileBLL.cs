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
    }
}
