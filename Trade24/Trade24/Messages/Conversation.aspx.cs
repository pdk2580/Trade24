using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BO;
using Trade24.BLL;
using Trade24.Utilities.Logger;

namespace Trade24.Messages
{
    public partial class Conversation : System.Web.UI.Page
    {
        public AccountBO FParty = null;
        public AccountBO SParty = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            int accountId;

            try
            {
                if (!Int32.TryParse(Request.QueryString["id"].ToString(), out accountId))
                {
                    rptConversation.DataSource = MessageBLL.GetLastConversationPartners(AccountBLL.GetLoginAccount().ID);
                    rptConversation.DataBind();
                    return;
                }

                if (AccountBLL.GetLoginAccount().ID == accountId)
                {
                    rptConversation.DataSource = MessageBLL.GetLastConversationPartners(AccountBLL.GetLoginAccount().ID);
                    rptConversation.DataBind();
                    return;
                }

                rptConversation.DataSource = MessageBLL.GetLastConversationPartners(AccountBLL.GetLoginAccount().ID);
                rptConversation.DataBind();

                FParty = AccountBLL.GetLoginAccount();
                SParty = AccountBLL.GetAccount(accountId);

                IEnumerable<MessageBO> topLastMessages = MessageBLL.GetConversations(FParty.ID, SParty.ID);

                foreach (MessageBO m in topLastMessages)
                {
                    if (m.SenderID == FParty.ID)
                    {
                        m.SenderName = FParty.GetName();
                    }
                    else
                    {
                        m.SenderName = SParty.GetName();
                    }
                }
                rptMessage.DataSource = topLastMessages;
                rptMessage.DataBind();
            }
            catch (Exception ex)
            {
                LogManager.Log(LogType.ERROR, ex.ToString());
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["id"] != null)
                {
                    MessageBO msg = new MessageBO();
                    msg.SenderID = AccountBLL.GetLoginAccount().ID;
                    msg.ReceiverID = Int32.Parse(Request.QueryString["id"]);
                    msg.Content = txtBox.Text;
                    msg.MessageType = "1";
                    msg.AttachmentPhysicFile = "";
                    msg.AttachmentFileName = "";

                    MessageBLL.CreateMessage(msg);
                }
            }
            catch (Exception ex)
            {
                LogManager.Log(LogType.ERROR, ex.ToString());
            }
        }
    }
}