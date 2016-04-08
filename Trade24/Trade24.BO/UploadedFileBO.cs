using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    public enum FileType
    {
        IMAGE
    }

    public class UploadedFileBO
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string FileType { get; set; }
        public int RequestId { get; set; }

        public UploadedFileBO() { }

        public UploadedFileBO(int Id, string Name, FileType FileType, int RequestId)
        { 
            this.Id = Id;
            this.Name = Name;
            this.FileType = FileType.ToString();
            this.RequestId = RequestId;
        }
    }
}
