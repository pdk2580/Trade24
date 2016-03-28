using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trade24.BO;

namespace Trade24.DAL
{
    public class MessageDAL
    {
        public IEnumerable<MessageBO> GetAllMessages()
        {
            IEnumerable<MessageBO> messages = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Messages";
                messages = sqlConnection.Query<MessageBO>(query);
            }

            return messages;
        }

        public MessageBO GetMessages(int messageId)
        {
            IEnumerable<MessageBO> messages = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Messages WHERE ID = @ID";
                messages = sqlConnection.Query<MessageBO>(query, new { ID = messageId });
            }

            return messages.Count() > 0 ? messages.First() : null;
        }

        public IEnumerable<MessageBO> GetSenderMessages(int senderId)
        {
            IEnumerable<MessageBO> messages = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Messages WHERE SenderID = @SenderID";
                messages = sqlConnection.Query<MessageBO>(query, new { SenderID = senderId });
            }

            return messages;
        }

        public IEnumerable<MessageBO> GetRecieverMessages(int recieverId)
        {
            IEnumerable<MessageBO> messages = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Messages WHERE ReceiverID = @ReceiverID";
                messages = sqlConnection.Query<MessageBO>(query, new { ReceiverID = recieverId });
            }

            return messages;
        }
        public IEnumerable<MessageBO> GetConversations(int senderId, int recieverId, int startsFrom = 0)
        {
            IEnumerable<MessageBO> messages = null;

            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "SELECT * FROM Messages WHERE ReceiverID IN (@SenderID, @ReceiverID) OR SenderID IN (@SenderID, @ReceiverID)";
                messages = sqlConnection.Query<MessageBO>(query, new { ReceiverID = recieverId, SenderID = senderId });
            }

            return messages;
        }

        public void CreateMessage(MessageBO message)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "INSERT Messages (SenderID, ReceiverID, MessageType, Content, AttachmentPhysicFile, AttachmentFileName) VALUES (@SenderID, @ReceiverID, @MessageType, @Content, @AttachmentPhysicFile, @AttachmentFileName)";
                sqlConnection.Execute(query, message);
            }
        }

        public void RemoveMessage(int messageId)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "DELETE FROM Messages WHERE ID = @ID";
                sqlConnection.Execute(query, new { ID = messageId });
            }
        }

        public void UpdateMessage(MessageBO updatedMessage)
        {
            using (var sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["trade24"].ConnectionString))
            {
                sqlConnection.Open();

                string query = "UPDATE Messages SET SenderID=@SenderID, ReceiverID=@ReceiverID, MessageType=@MessageType, Content=@Content, AttachmentPhysicFile=@AttachmentPhysicFile, AttachmentFileName=@AttachmentFileName WHERE ID=@ID";
                sqlConnection.Execute(query, updatedMessage);
            }
        }
    }
}
