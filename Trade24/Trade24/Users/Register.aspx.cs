using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BLL;
using Trade24.BO;

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
                ddl_Country.DataValueField = "ID";
                ddl_Country.DataBind();
            }
        }

        protected void ddl_Country_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedCountryId;
            if (int.TryParse(ddl_Country.SelectedItem.Value, out selectedCountryId))
            {
                CityBLL objCity = new CityBLL();
                ddl_City.Enabled = true;
                ddl_City.DataSource = objCity.GetCities(selectedCountryId);
                ddl_City.DataTextField = "Name";
                ddl_City.DataValueField = "ID";
                ddl_City.DataBind();
            }
            else
            {
                //ddl_City.Enabled = false;
                //ddl_City.ClearSelection();
                //ddl_City.DataSource = null;
                //ddl_City.DataBind();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (IsValidated(txtEmail.Text.Trim()) && IsAccountExist(txtEmail.Text.Trim()))
            {
                AccountBO newAccount = new AccountBO
                {
                    Email = txtEmail.Text.Trim(),
                    FName = txtFName.Text.Trim(),
                    LName = txtLName.Text.Trim(),
                    CountryID = int.Parse(ddl_Country.SelectedValue),
                    CityID = int.Parse(ddl_City.SelectedValue),
                    Password = txtPwd.Text
                };

                new AccountBLL().CreateNewAccount(newAccount);
            }
            Response.Redirect("~/Users/Login.aspx");
        }

        protected bool IsValidated(string email)
        {
            
            // to do: server side validation for other field
            Regex rEMail = new Regex(@"^[a-zA-Z][\w\.-]{0,68}[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$");

            return rEMail.IsMatch(email);
        }

        protected bool IsAccountExist(string email)
        {
            bool isValid = true;

            if (AccountBLL.IsAccountExist(email))
            {
                Response.Write("Error: Currennt email already exists"); // to do: show error messgae
                isValid = false;
            }

            return isValid;
        }
    }
}