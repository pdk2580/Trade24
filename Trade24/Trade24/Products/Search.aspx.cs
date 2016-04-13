using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Trade24.BO;
using Trade24.BLL;

namespace Trade24.Products
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if ((Request.QueryString["keyword"] != null) && (Request.QueryString["keyword"].ToString().Length > 0))
                {
                    txtKeyword.Text = Request.QueryString["keyword"].ToString();
                    rptRequests.DataSource = RequestBLL.SearchRequest(RequestType.REQUEST, txtKeyword.Text.Trim(), 0, Order.ASC);
                    rptRequests.DataBind();
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if(txtKeyword.Text.Length > 0)
            {

                RequestType searchBy = RequestType.REQUEST; //Buyer, 2:Seller

                if (rbLfSeller.Checked)
                {
                    searchBy = RequestType.SELL;
                }

                rptRequests.DataSource = RequestBLL.SearchRequest(searchBy, txtKeyword.Text.Trim(), 0, Order.ASC);
                rptRequests.DataBind();
            }
        }
    }
}