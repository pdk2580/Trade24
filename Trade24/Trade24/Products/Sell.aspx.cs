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
        int requestId = 0;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["id"] != null)
                {
                    if (Int32.TryParse(Request.QueryString["id"].Trim().ToString(), out requestId))
                    {
                        GetSellProduct(requestId);

                        if(InterestListBLL.IsInterested(new InterestListBO() { UserID = AccountBLL.GetLoginAccount().ID, RequestID = requestId }))
                        {
                            btnAddToList.Disabled = true;
                        }

                        if(AccountBLL.GetLoginAccount() != null)
                        {
                            ItemViewListBLL.Save(new ItemViewListBO() { UserID = AccountBLL.GetLoginAccount().ID, RequestID = requestId });
                        }
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

            RequestBO req = RequestBLL.GetRequest(requestId, RequestType.SELL);
            if (req != null)
            {
                txtPn.Text = req.Name;
                txtP.Text = ((double)req.MinPrice).ToString("N2");
                txtQty.Text = ((double)req.MinQty).ToString("N2");
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

        protected void btnAddToList_Click(object sender, EventArgs e)
        {
            btnAddToList.Disabled = true;
            InterestListBLL.Save(new InterestListBO() { UserID = AccountBLL.GetLoginAccount().ID, RequestID = requestId });
        }
    }
}