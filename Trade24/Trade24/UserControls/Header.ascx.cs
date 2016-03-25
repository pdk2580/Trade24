using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BLL;
using Trade24.BO;

namespace Trade24.UserControls
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InitiateLoginUserSetting();
        }

        private void InitiateLoginUserSetting()
        {
            AccountBO loginAccount = new AccountBO();
            loginAccount = AccountBLL.GetLoginAccount();

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
    }
}