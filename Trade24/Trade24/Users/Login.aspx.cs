using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BLL;

namespace Trade24.Users
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsValidated() && IsAthenticatedAccount(txtEmail.Text.Trim(), txtPwd.Text.Trim()))
            {
                AccountBLL.Login(txtEmail.Text.Trim());
                Response.Redirect("~/Default.aspx");
            }

        }

        protected bool IsValidated()
        {
            bool isValid = true;

            // to do: server side validation
            Page.Validate();
            if (!Page.IsValid)
                isValid = false;


            //Regex rEMail = new Regex(@"^[a-zA-Z][\w\.-]{0,68}[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$");
            //if (txtEmail.Text.Length > 0)
            //{
            //    if (!rEMail.IsMatch(txtEmail.Text))
            //    {
            //        //not match
            //    }

            //    //if match
            //    if (!(txtPwd.Text.Length > 0))
            //    {
            //        //not match
            //    }


            //    //do login check
            //}

            return isValid;
        }

        protected bool IsAthenticatedAccount(string email, string password)
        {
            bool isValid = true;

            if (!AccountBLL.IsAuthenticatedAccount(email, password))
            {
                Response.Write("Error: Account does not exist");    // to do: show error messgae
                isValid = false;
            }

            return isValid;
        }
    }
}