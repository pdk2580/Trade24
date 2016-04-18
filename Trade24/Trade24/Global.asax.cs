using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Trade24
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RouteTable.Routes.MapPageRoute("ProductRequests",
                "Products/Requests/{id}", "~/Products/Request.aspx");

            RouteTable.Routes.MapPageRoute("ProductAddRequests",
                "Products/Requests/Add", "~/Products/AddRequest.aspx");

            RouteTable.Routes.MapPageRoute("ProductSell",
                "Products/Sells/{id}", "~/Products/Sell.aspx");

            RouteTable.Routes.MapPageRoute("ProductAddSell",
                "Products/Sells/Add", "~/Products/AddSell.aspx");

            RouteTable.Routes.MapPageRoute("ProductSearch",
                "Products/Search", "~/Products/Search.aspx");

            RouteTable.Routes.MapPageRoute("LoginLink",
                "Users/Login", "~/Users/Login.aspx");

            RouteTable.Routes.MapPageRoute("RegisterLink",
                "Users/Register", "~/Users/Register.aspx");

            RouteTable.Routes.MapPageRoute("LogoutLink",
                "Users/Logout", "~/Users/Logout.aspx");

            RouteTable.Routes.MapPageRoute("SettingLink",
                "Users/Setting", "~/Users/Settings.aspx");

            RouteTable.Routes.MapPageRoute("MessagesLink",
                "Messages", "~/Messages/Conversation.aspx");

            RouteTable.Routes.MapPageRoute("ProfileLink",
                "Users/Profile/{id}", "~/Users/Profile.aspx");
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            // Code that runs on application startup                                                            
            HttpCookie cookie = HttpContext.Current.Request.Cookies["CultureInfo"];
            if (cookie != null && cookie.Value != null)
            {
                System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(cookie.Value);
                System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(cookie.Value);
            }
            else
            {
                System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en");
                System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("en");
            }
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}