﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trade24.Products
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["keyword"] != null)
            {
                txtKeyword.Text = Request.QueryString["keyword"].ToString();

                //Do search
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

        }
    }
}