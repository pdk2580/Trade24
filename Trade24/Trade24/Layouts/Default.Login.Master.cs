using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BLL;

namespace Trade24.Layouts
{
    public partial class Default_Login : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!AccountBLL.CheckLogin())
                Response.Redirect("~/Users/Login.aspx?continue=" + HttpContext.Current.Request.Url.AbsolutePath);
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            if (!AccountBLL.CheckLogin())
                Response.Redirect("~/Users/Login.aspx?continue=" + HttpContext.Current.Request.Url.AbsolutePath);
        }
    }
}