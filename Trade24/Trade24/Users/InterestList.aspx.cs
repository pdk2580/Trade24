using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BLL;
namespace Trade24.Users
{
    public partial class InterestList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rptInterestTable.DataSource = InterestListBLL.GetAllInterested(AccountBLL.GetLoginAccount().ID);
                rptInterestTable.DataBind();
            }
        }
    }
}