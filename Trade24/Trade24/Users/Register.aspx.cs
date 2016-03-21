﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
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
                ddl_Country.DataValueField = "ID";
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

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Regex rEMail = new Regex(@"^[a-zA-Z][\w\.-]{0,68}[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$");
            if (txtEmail.Text.Length > 0)
            {
                if (!rEMail.IsMatch(txtEmail.Text))
                {
                    //not match
                }

                //if match
                if (!(txtPwd.Text.Length > 0))
                {
                    //not match
                }


                //do login check
            }
        }
    }
}