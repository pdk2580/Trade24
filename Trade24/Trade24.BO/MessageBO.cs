using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trade24.BO
{
    public class MessageBO
    {
        public int ID { get; set; }
        public int? SenderID { get; set; }
        public int? ReceiverID { get; set; }
        public string MessageType { get; set; }
        public string Content { get; set; }
        public string AttachmentPhysicFile { get; set; }
        public string AttachmentFileName { get; set; }
        public DateTime Created_at { get; set; }

        public MessageBO(int ID, int? SenderID, int? ReceiverID, string MessageType, string Content, string AttachmentPhysicFile, string AttachmentFileName, DateTime Created_at)
        {
            this.ID = ID;
            this.SenderID = SenderID;
            this.ReceiverID = ReceiverID;
            this.MessageType = MessageType;
            this.Content = Content;
            this.AttachmentPhysicFile = AttachmentPhysicFile;
            this.AttachmentFileName = AttachmentFileName;
            this.Created_at = Created_at;

        }
    }
}