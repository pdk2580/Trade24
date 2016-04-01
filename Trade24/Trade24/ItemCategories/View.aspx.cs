using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BLL;
using Trade24.Utilities.Logger;

namespace Trade24.ItemCategories
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int selectedCategoryId;

                try
                {
                    if (int.TryParse(Request["id"], out selectedCategoryId))
                    {
                        rpItemCategories.DataSource = ItemCategoryBLL.GetCategories(selectedCategoryId).ToList();
                        rpItemCategories.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    LogManager.Log(LogType.ERROR, ex.ToString());
                }
            }
        }
    }
}