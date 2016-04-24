using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Trade24.BLL;

namespace Trade24.Users
{
    public partial class LastSeenRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rptVisitTable.DataSource = ItemViewListBLL.GetAllVisits(AccountBLL.GetLoginAccount().ID);
                rptVisitTable.DataBind();
            }
        }
    }
}