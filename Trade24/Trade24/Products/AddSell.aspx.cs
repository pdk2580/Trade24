﻿using System;
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
            if (!IsPostBack)
            {
                ddlUnit.DataSource = null;
                ddlUnit.DataBind();
                ddlCurrency.DataSource = null;
                ddlCurrency.DataBind();
                ddlWeightUnit.DataSource = null;
                ddlWeightUnit.DataBind();
                ddlCountry.DataSource = null;
                ddlCountry.DataBind();
                ddlCity.DataSource = null;
                ddlCity.DataBind();
                ddlSupplyAbilityUnit.DataSource = null;
                ddlSupplyAbilityUnit.DataBind();
                ddlSupplyAbilityTimeUnit.DataSource = null;
                ddlSupplyAbilityTimeUnit.DataBind();
            }
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
                int i = RequestBLL.CreateRequest(req);

                if (!string.IsNullOrEmpty(imgs1.FileName))
                {
                    SaveUploadedImage(i);
                }

                Response.Redirect("~/Products/Sell.aspx?id=" + i.ToString());
            }
            catch (Exception ex)
            {
                LogManager.Log(LogType.WARNING, ex.Message);
            }
        }

        protected void SaveUploadedImage(int requestId)
        {

            string subPath = "Upload\\" + AccountBLL.GetLoginAccount().ID.ToString();

            System.IO.Directory.CreateDirectory(HttpRuntime.AppDomainAppPath + subPath);
            imgs1.SaveAs(HttpRuntime.AppDomainAppPath + subPath + "\\" + imgs1.FileName);

            UploadedFileBO uploadedFile = new UploadedFileBO()
            {
                Name = imgs1.FileName,
                FileType = "1",
                RequestID = requestId
            };


            UploadedFileBLL.CreateUploadedFile(uploadedFile);
        }
    }
}