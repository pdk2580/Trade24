<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Public.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Trade24.Products.Search" %>
<%@ Import Namespace="Trade24.BO" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional head--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content" style="text-align: center">
        <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <b>Search</b>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Keyword:</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtKeyword" runat="server" class="form-control" placeholder="Enter email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Looking for</label>
                        <div class="col-sm-2">
                            <label>
                                <asp:RadioButton ID="rbLfBuyer" runat="server" GroupName="lf" Checked="true" />
                                Buyer</label>
                        </div>
                        <div class="col-sm-2">
                            <label>
                                <asp:RadioButton ID="rbLfSeller" runat="server" GroupName="lf" />
                                Seller</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Sort by:</label>
                        <div class="col-sm-2">
                            <label>
                                <asp:RadioButton ID="rbSbPrice" runat="server" GroupName="sb" Checked="true" />
                                Price</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2"></label>
                        <div class="col-sm-10">
                            <asp:Button ID="btnSearch" runat="server" Text="Search Now" class="btn btn-lg btn-primary btn-block" OnClick="btnSearch_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="row">
            <div class="col-lg-9">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <b>Results</b>
                    </div>
                    <div class="panel-body">
                        <asp:Repeater ID="rptRequests" runat="server">
                            <ItemTemplate>
                                <div class="media">
                                    <a class="media-left" href="#">
                                        <img class="media-object" data-src="..." alt="Generic placeholder image">
                                    </a>
                                    <div class="media-body" style="text-align:left">
                                        <h4 class="media-heading">
                                            <a href="<%# ((RequestBO)Container.DataItem).ID %>/<%# ((RequestBO)Container.DataItem).ID %>"><%# ((RequestBO)Container.DataItem).Name %></a> 
                                        <small>sold by <a href=""><b>Bill Gates</b></a> from <a href="">Makassar, Indonesia</a></small></h4>
                                        <small><%# ((RequestBO)Container.DataItem).MinPrice.ToString() %></small> <%# ((RequestBO)Container.DataItem).Description %>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="col-lg-3" style="text-align:left">
                You might be interested in:
                <ul>
                    <li>123</li>
                    <li>123</li>
                    <li>123</li>
                    <li>123</li>
                    <li>123</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
</asp:Content>
