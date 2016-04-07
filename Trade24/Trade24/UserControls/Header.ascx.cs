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
        public AccountBO loginAccount = AccountBLL.GetLoginAccount();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SetLoginUser();
                SetCurrentPage();
            }
            catch (Exception ex)
            {
                LogManager.Log(LogType.ERROR, ex.ToString());
            }
        }

        private void SetCurrentPage()
        {
            string pageName = GetCurrentPage().ToLower();

            switch (pageName)
            {
                case "default.aspx":
                    navHome.Attributes["class"] = "active";
                    break;
                case "request.aspx":
                    navBuy.Attributes["class"] = "active";
                    break;
                case "sell.aspx":
                    navSell.Attributes["class"] = "active";
                    break;
            }
        }

        private string GetCurrentPage()
        {
            return Request.Url.ToString().Split('/').Last();
        }

        private void SetLoginUser()
        {
            if (loginAccount != null)
            {
                lblUserName.InnerText = loginAccount.FName.ToString() + " " + loginAccount.LName.ToString();

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
            LogManager.Log(LogType.INFO, loginAccount.Email + " successfully logged out");
        }

        protected void ViewProfile(object sender, EventArgs e)
        {
            if (loginAccount != null)
            {
                Response.Redirect("~/Users/Profile.aspx?id=" + loginAccount.ID.ToString());
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Products/Search.aspx?keyword=" + txtSearch.Text);
        }
    }
}