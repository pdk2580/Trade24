using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BLL;
using Trade24.BO;

namespace Trade24.Product
{
    public partial class Sell : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int id = Int32.Parse(Request.QueryString["id"].ToString());
                RequestBO req = RequestBLL.GetRequest(id);
                if (req.RequestType == "2")
                {
                    txtPn.Text = req.Name;
                    txtP.Text = req.MinPrice.ToString();
                    txtQty.Text = req.MinQty.ToString();
                    txtPd.Text = req.Description;
                    txtPc.Text = req.ItemCategoryID.ToString();
                }
                else
                {
                    throw new Exception("Wrong Request Type");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}