<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Login.Master" AutoEventWireup="true" CodeBehind="AddRequest.aspx.cs" Inherits="Trade24.Products.AddRequest" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional head--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content" style="padding-top:25px;">
        <div class="row">
            <div class="col-lg-5">
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Product Name</label>
                <div class="col-sm-8">
                  <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Product Category</label>
                <div class="col-sm-8">
                  <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Min Qty Order</label>
                <div class="col-sm-8">
                  <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Price</label>
                <div class="col-sm-8">
                  <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Product Description</label>
                <div class="col-sm-8">
                  <textarea type="email" class="form-control" id="inputEmail3" placeholder="Email"></textarea>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Images</label>
                <div class="col-sm-8">
                  <textarea type="email" class="form-control" id="inputEmail3" placeholder="Email"></textarea>
                </div>
              </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
    <%--to add addtional script--%>
</asp:Content>
