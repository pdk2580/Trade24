using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trade24.BO;
using Trade24.DAL;

namespace Trade24.BLL
{
    public class MessageBLL
    {
        public static void CreateMessage(MessageBO msg)
        {
            new MessageDAL().CreateMessage(msg);
        }

        public static IEnumerable<MessageBO> GetSenderMessages(int senderId)
        {
            return new MessageDAL().GetSenderMessages(senderId);
        }

        public static IEnumerable<MessageBO> GetRecieverMessages(int recieverId)
        {
            return new MessageDAL().GetRecieverMessages(recieverId);
        }
        public static IEnumerable<MessageBO> GetConversations(int senderId, int recieverId)
        {
            if (senderId == recieverId) return null;
            return new MessageDAL().GetConversations(senderId, recieverId);
        }
    }
}
