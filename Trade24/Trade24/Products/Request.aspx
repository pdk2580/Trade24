<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Public.Master" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="Trade24.Product.Request" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional head--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content" style="padding-top:25px;">
        <div class="row">
            <div class="col-lg-5">
                <img id="pImg" src="" style="max-width:480px;" />
            </div>
            <div class="col-lg-5">
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Product Name</label>
                <div class="col-sm-8">
                    <asp:Label ID="txtPn" runat="server" Text="Label"></asp:Label>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Product Category</label>
                <div class="col-sm-8">
                    <asp:Label ID="txtPc" runat="server" Text="Label"></asp:Label>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Min Qty Order</label>
                <div class="col-sm-8">
                    <asp:Label ID="txtQty" runat="server" Text="Label"></asp:Label>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Price</label>
                <div class="col-sm-8">
                    <asp:Label ID="txtP" runat="server" Text="Label"></asp:Label>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Product Description</label>
                <div class="col-sm-8">
                    <asp:Label ID="txtPd" runat="server" Text="Label"></asp:Label>
                </div>
              </div>
            </div>
            </div>
        </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
    <%--to add addtional script--%>
</asp:Content>
