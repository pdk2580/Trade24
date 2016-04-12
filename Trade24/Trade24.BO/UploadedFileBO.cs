using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    public class UploadedFileBO
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string FileType { get; set; }
        public int RequestID { get; set; }

        public UploadedFileBO() { }

        public UploadedFileBO(int id, string name, string fileType, int requestId)
        { 
            this.ID = id;
            this.Name = name;
            this.FileType = fileType;
            this.RequestID = requestId;
        }
    }
}
