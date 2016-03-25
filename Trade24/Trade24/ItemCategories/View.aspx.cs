using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BLL;

namespace Trade24.ItemCategories
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ItemCategoryBLL objItemCategory = new ItemCategoryBLL();
                int selectedCategoryId;

                if (int.TryParse(Request["id"], out selectedCategoryId))
                {
                    rpItemCategories.DataSource = objItemCategory.GetCategories(selectedCategoryId).ToList();
                    rpItemCategories.DataBind();
                }
            }
        }
    }
}