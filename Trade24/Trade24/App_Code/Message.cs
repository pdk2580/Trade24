using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trade24.App_Code
{
    public class Message
    {
        public int ID { get; set; }
        public int SenderID { get; set; }
        public int ReceiverID { get; set; }
        public int MessageType { get; set; }
        public int Content { get; set; }
        public DateTime SentTime { get; set; }
        public string FileID { get; set; }
        public int FileName { get; set; }

    }
}