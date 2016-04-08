﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BO;
using Trade24.BLL;

namespace Trade24
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (AccountBLL.CheckLogin())
            {
                Response.Redirect("/Home.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
        }
    }
}