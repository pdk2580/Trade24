using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Trade24.BO;
using Trade24.BLL;
using Trade24.Utilities.Logger;

namespace Trade24.Users
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccountBO acc = null;
                try
                {
                    int id = Int32.Parse(Request.Params["id"].ToString());
                    acc = AccountBLL.GetAccount(id);
                    if (acc == null) throw new Exception("Account not found");
                }
                catch (Exception ex)
                {
                    throw new Exception("ID not found");
                }
                if (!IsPostBack)
                {
                    lblName.Text = acc.GetName();
                    lblCompany.Text = acc.CompanyName;
                    lblAddress1.Text = acc.Address1;
                    lblAddress2.Text = acc.Address2;
                    lblPhone1.Text = acc.Phone1;
                    lblPhone2.Text = acc.Phone2;
                    lblPostalCode.Text = acc.PostalCode;
                    lblCity.Text = acc.CityID.ToString();
                    lblCountry.Text = acc.CountryID.ToString();
                }
            }
            catch(Exception ex)
            {
                LogManager.Log(LogType.INFO, ex.Message);
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}