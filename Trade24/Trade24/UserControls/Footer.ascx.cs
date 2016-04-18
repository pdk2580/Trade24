using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Globalization;
using System.Threading;

namespace Trade24.UserControls
{
    public partial class Footer : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["ddindex"] != null)
                {
                    ddlLanguages.SelectedValue = Session["ddindex"].ToString();
                    ddlLanguages.SelectedIndex = Convert.ToInt32(Session["ddindex"].ToString());
                }
                else
                {
                    ddlLanguages.SelectedValue = Thread.CurrentThread.CurrentCulture.Name;
                }
            }
        }

        protected void ddlLanguages_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["language"] = ddlLanguages.SelectedValue;
            //Sets the cookie that is to be used by Global.asax
            HttpCookie cookie = new HttpCookie("CultureInfo");
            cookie.Value = ddlLanguages.SelectedValue;
            Response.Cookies.Add(cookie);
            //Set the culture and reload for immediate effect.
            //Future effects are handled by Global.asax
            Thread.CurrentThread.CurrentCulture = new CultureInfo(ddlLanguages.SelectedValue);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(ddlLanguages.SelectedValue);
            switch (cookie.Value)
            {
                case "en":
                    Session["ddindex"] = 0;
                    break;
                case "id":
                    Session["ddindex"] = 1;
                    break;
                case "kr":
                    Session["ddindex"] = 2;
                    break;
                default:
                    Session["ddindex"] = 0;
                    break;
            }

            Response.Redirect(Request.Path);
        }
    }
}