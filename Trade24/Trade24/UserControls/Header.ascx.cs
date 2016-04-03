using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BLL;
using Trade24.BO;
using Trade24.Utilities.Logger;

namespace Trade24.UserControls
{
    public partial class Header : System.Web.UI.UserControl
    {
        AccountBO loginAccount = AccountBLL.GetLoginAccount();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                InitiateLoginUserSetting();
            }
            catch (Exception ex)
            {
                LogManager.Log(LogType.ERROR, ex.ToString());
            }
        }

        private void InitiateLoginUserSetting()
        {
            if (loginAccount != null)
            {
                lbUserName.Text = loginAccount.FName.ToString() + " " + loginAccount.LName.ToString();

                publicAccountNavbar.Visible = false;
                loginAccountNavbar.Visible = true;
            }
            else
            {
                publicAccountNavbar.Visible = true;
                loginAccountNavbar.Visible = false;
            }
        }

        protected void Logout(object sender, EventArgs e)
        {
            AccountBLL.Logout();
            HttpContext.Current.Response.Redirect("~/Default.aspx");
        }

        protected void ViewProfile(object sender, EventArgs e)
        {
            if (loginAccount != null)
            {
                Response.Redirect("~/Users/Profile.aspx?id=" + loginAccount.ID.ToString());
            }
        }
    }
}