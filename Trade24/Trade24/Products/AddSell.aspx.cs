using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Trade24.BO;
using Trade24.BLL;
using Trade24.Utilities.Logger;

namespace Trade24.Products
{
    public partial class AddSell : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                RequestBO req = new RequestBO();
                try
                {
                    req.RequestType = "2";
                    req.UploaderID = AccountBLL.GetLoginAccount().ID;
                    req.Name = txtPn.Text;
                    req.MinQty = float.Parse(txtQty.Text);
                    req.MinPrice = float.Parse(txtP.Text);
                    req.ItemCategoryID = 1;
                    req.Description = txtPd.Text;
                }
                catch (Exception ex)
                {
                    throw new Exception("Wrong conversion of data");
                }
                RequestBLL.CreateRequest(req);
            }
            catch (Exception ex)
            {
                LogManager.Log(LogType.WARNING, ex.Message);
            }
        }
    }
}