using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    class MessageBO
    {
        public int ID { get; set; }
        public int SenderID { get; set; }
        public int ReceiverID { get; set; }
        public int MessageType { get; set; }
        public string Content { get; set; }
        public string AttachmentPhysicFile { get; set; }
        public string AttachmentFileName { get; set; }
        public DateTime SendTime { get; set; }
    }
}
