using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Trade24.BLL;
using Trade24.BO;
using Trade24.Utilities.Logger;

namespace Trade24.Product
{
    public partial class Sell : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int requestId;
                if (Request.QueryString["id"] != null)
                {
                    if (Int32.TryParse(Request.QueryString["id"].Trim().ToString(), out requestId))
                    {
                        GetSellProduct(requestId);
                    }
                }
                else
                {
                    GetAllSellList();
                }
            }
            catch (Exception ex)
            {
                LogManager.Log(LogType.ERROR, ex.ToString());
                Response.Redirect("~/error.aspx");
            }
        }

        private void GetSellProduct(int requestId)
        {
            dvSellDetail.Visible = true;
            dvSellList.Visible = false;

            RequestBO req = RequestBLL.GetRequest(requestId);
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
                throw new Exception("Wrong request type");
            }
        }

        private void GetAllSellList()
        {
            dvSellDetail.Visible = false;
            dvSellList.Visible = true;

            IEnumerable<RequestBO> selltList = from request in RequestBLL.GetAllRequests()
                                                 where request.RequestType == "2"
                                                 select request;

            rptSells.DataSource = selltList;
            rptSells.DataBind();

        }
    }
}