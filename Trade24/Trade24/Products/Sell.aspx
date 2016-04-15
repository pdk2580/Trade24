<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Public.Master" AutoEventWireup="true" CodeBehind="Sell.aspx.cs" Inherits="Trade24.Product.Sell" %>

<%@ Import Namespace="Trade24.BO" %>
<%@ Import Namespace="Trade24.BLL" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional head--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content" style="padding-top: 25px;">
        <div id="dvSellDetail" class="row" visible="false" runat="server">
            <div class="col-lg-12">
                <div class="col-lg-5">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <img src="/Assets/img/portfolio-1.jpg" style="width:100%;display:inline-block;" />
                                </div>
                            </div><br />
                            <div class="row">
                                <div class="col-lg-3">
                                    <img src="/Assets/img/portfolio-1.jpg" style="width:100%;display:inline-block;" />
                                </div>
                                <div class="col-lg-3">
                                    <img src="/Assets/img/portfolio-1.jpg" style="width:100%;display:inline-block;" />
                                </div>
                                <div class="col-lg-3">
                                    <img src="/Assets/img/portfolio-1.jpg" style="width:100%;display:inline-block;" />
                                </div>
                                <div class="col-lg-3">
                                    <img src="/Assets/img/portfolio-1.jpg" style="width:100%;display:inline-block;" />
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h2><asp:Label ID="txtPn" runat="server" Text="Label"></asp:Label></h2>
                            <span class="alert alert-info" style="margin:0;padding:3.8px;"><b>Uploaded</b></span> by <a href="AddRequest.aspx">Bill Gates</a> from <a href="AddRequest.aspx">Makassar, Indonesia</a> in <a href=""><asp:Label ID="txtPc" runat="server" Text="Label"></asp:Label></a>
                        </div>
                        <div class="panel-body">                            
                            <div class="panel panel-default" style="margin-top:-15px;">
                                <div class="panel-heading">
                                    <b>Product Info</b>
                                </div>
                                <div class="panel-body">
                                    <table class="table" style="margin:0">
                                        <tbody>
                                            <tr>
                                                <td style="border:none">Min Qty Order</td>
                                                <td style="border:none"><asp:Label ID="txtQty" runat="server" Text="Label"></asp:Label> PC</td>
                                            </tr>
                                            <tr>
                                                <td>Price</td>
                                                <td>SGD <asp:Label ID="txtP" runat="server" Text="Label"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>Product Description</td>
                                                <td><asp:Label ID="txtPd" runat="server" Text="Label"></asp:Label></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4">
                                    <asp:HyperLink ID="hlinkReport" runat="server" CssClass="btn btn-danger btn-block"><i class="glyphicon glyphicon-flag"></i> Report</asp:HyperLink>
                                </div>
                                <div class="col-lg-4">
                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success btn-block"><i class="glyphicon glyphicon-book"></i> Save to list</asp:HyperLink>
                                </div>
                                <div class="col-lg-4">
                                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-primary btn-block"><i class="glyphicon glyphicon-envelope"></i> Message Seller</asp:HyperLink>
                                </div>
                            </div>                            
                        </div>
                    </div>
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
