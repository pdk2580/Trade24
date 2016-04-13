<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Public.Master" AutoEventWireup="true" CodeBehind="Sell.aspx.cs" Inherits="Trade24.Product.Sell" %>

<%@ Import Namespace="Trade24.BO" %>
<%@ Import Namespace="Trade24.BLL" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional head--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content" style="padding-top: 25px;">
        <div id="dvSellDetail" class="row" visible="false" runat="server">
            <div class="col-lg-5">
                <img id="pImg" src="" style="max-width: 480px;" />
            </div>
            <div class="col-lg-5">
                <div class="form-group" style="background-color: grey; color: white;">
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
                <div class="form-group" style="background-color: grey; color: white;">
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
                <div class="form-group" style="background-color: grey; color: white;">
                    <label for="inputEmail3" class="col-sm-4 control-label">Product Description</label>
                    <div class="col-sm-8">
                        <asp:Label ID="txtPd" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-4">
                    <asp:HyperLink ID="hlinkReport" runat="server" CssClass="btn btn-primary btn-block"><i class="glyphicon glyphicon-envelope"></i> Report</asp:HyperLink>
                </div>
            </div>
        </div>
        <div id="dvSellList" visible="false" runat="server">
            <div class="page-header">
                <h2>Latest Uploaded Product <small><a href="/Products/AddSell.aspx">Register your selling product</a></small></h2>
            </div>
            <asp:Repeater ID="rptSells" runat="server">
                <HeaderTemplate>
                    <div class="list-group">
                </HeaderTemplate>
                <ItemTemplate>
                    <%--<div class="media">
                        <a class="media-left" href="#">
                            <img class="media-object" src="<%# UploadedFileBLL.GetUploadedFilePath(((RequestBO)Container.DataItem).ID) %>" alt="Generic placeholder image">
                        </a>
                        <div class="media-body" style="text-align: left">
                            <h4 class="media-heading"><%# ((RequestBO)Container.DataItem).Name %> <small>sold by <a href=""><b>Bill Gates</b></a> from <a href="">Makassar, Indonesia</a></small></h4>
                            <small>Rp 0,-</small> <%# ((RequestBO)Container.DataItem).Description %>
                        </div>
                    </div>--%>
                    <div class="list-group-item">
                        <div class="row">
                            <div class="col-md-2">
                                <img id="imgProduct" class="img-responsive img-rounded" src="<%# Trade24.BLL.UploadedFileBLL.GetUploadedFilePath(((RequestBO)Container.DataItem).ID) %>" alt="Product image" />
                            </div>
                            <div class="col-md-6">
                                <h4 class="list-group-item-heading"><%# ((RequestBO)Container.DataItem).Name %></h4>
                                <div class="list-group-item-text">
                                    <div class="row">
                                        <div class="col-md-6">
                                            US$ <%# ((RequestBO)Container.DataItem).MinPrice %>
                                        </div>
                                        <div class="col-md-6">
                                            <%# ((RequestBO)Container.DataItem).MinQty %> Tons
                                        </div>
                                    </div>
                                    <p><%# ((RequestBO)Container.DataItem).Description %></p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <h5 class="list-group-item-heading"><%# AccountBLL.GetAccount((int)((RequestBO)Container.DataItem).UploaderID).GetName() %></h5>
                                    <div class="list-group-item-text">
                                        <p class="text-muted"><%# AccountBLL.GetCityWithCountry((int)((RequestBO)Container.DataItem).UploaderID) %></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
    <%--to add addtional script--%>
</asp:Content>
