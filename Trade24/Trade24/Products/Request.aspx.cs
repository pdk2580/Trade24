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
    public partial class Request : System.Web.UI.Page
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
                        GetRequestProduct(requestId);
                    }
                }
                else
                {
                    if (Page.RouteData.Values["id"] != null)
                    {
                        if (Int32.TryParse(Page.RouteData.Values["id"].ToString().Trim(), out requestId))
                        {
                            GetRequestProduct(requestId);
                        }
                    }
                    else
                    {
                        GetAllRequestProducts();
                    }
                }
            }
            catch(Exception ex)
            {
                LogManager.Log(LogType.ERROR, ex.ToString());
                Response.Redirect("~/error.aspx");
            }
        }

        private void GetRequestProduct(int requestId)
        {
            dvRequestDetail.Visible = true;
            dvAllRequest.Visible = false;

            RequestBO req = RequestBLL.GetRequest(requestId, RequestType.REQUEST);
            if (req != null)
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

        private void GetAllRequestProducts()
        {
            dvRequestDetail.Visible = false;
            dvAllRequest.Visible = true;

            IEnumerable<RequestBO> requestList = from request in RequestBLL.GetAllRequests()
                                                 where request.RequestType == "1"
                                                 select request;

            rptRequests.DataSource = requestList;
            rptRequests.DataBind();
        }
    }
}