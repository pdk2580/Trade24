using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BLL;

namespace Trade24.Users
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CountryBLL objCountry = new CountryBLL();

                ddl_Country.DataSource = objCountry.GetAllCountries().ToList();
                ddl_Country.DataTextField = "Name";
                ddl_Country.DataValueField = "ISO2";
                ddl_Country.DataBind();
            }
        }

        protected void ddl_Country_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddl_Country.SelectedItem.Value == "")
            {
                ddl_City.Enabled = false;
                ddl_City.ClearSelection();
                ddl_City.DataSource = null;
                ddl_City.DataBind();
                return;
            }
            CityBLL objCity = new CityBLL();
            ddl_City.Enabled = true;
            ddl_City.DataSource = objCity.GetCities(ddl_Country.SelectedItem.Value).ToList();
            ddl_City.DataTextField = "Name";
            ddl_City.DataValueField = "ID";
            ddl_City.DataBind();
        }
    }
}