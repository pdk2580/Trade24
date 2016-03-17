using System;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ItemCategoryBLL objItemCategory = new ItemCategoryBLL();

                rpItemCategories.DataSource = objItemCategory.GetCategories(0).ToList();
                rpItemCategories.DataBind();
            }
        }
    }
}