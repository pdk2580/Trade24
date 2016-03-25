<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Trade24.Default" %>
<%@ Import Namespace="Trade24.BO" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional head--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content">
        <div class="row">
            <div class="col-lg-3">
                <ol class="breadcrumb" style="margin:15px 0 10px 0;">
                    <li><b>Item Categories</b></li>
                </ol>
                <div class="list-group">
                    <ul>
                        <asp:Repeater runat="server" ID="rpItemCategories">
                            <ItemTemplate>
                                        
                                <%--<li class="has-sub"><a href="#">Submenu 1.1.2</a>
                                <ul>
                                    <li><a href="#">Submenu 1.1.2.1</a></li>
                                    <li><a href="#">Submenu 1.1.2.2</a></li>
                                </ul>
                                    --%>
                                <li><a href="\ItemCategories\View.aspx?id=<%# ((ItemCategoryBO)Container.DataItem).ID %>" class="list-group-item"><asp:Label runat="server" ID="lblICName" Text="<%# ((ItemCategoryBO)Container.DataItem).Name %>"></asp:Label></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <div class="col-xs-9" style="background-color:white; padding:15px;">
                <ol class="breadcrumb" style="margin-bottom: 5px;">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Library</a></li>
                    <li class="active">Data</li>
                </ol>
                <div class="page-header">
                    <h1>Example page header <small>Subtext for header</small></h1>
                </div>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img data-src="..." alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img data-src="..." alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img data-src="..." alt="Third slide">
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="icon-prev" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="icon-next" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <script>
                    $('.carousel').carousel()
                </script>
                <div class="media">
                    <a class="media-left" href="#">
                    <img class="media-object" data-src="..." alt="Generic placeholder image">
                    </a>
                    <div class="media-body">
                    <h4 class="media-heading">ITEM01 <small><span class="label label-success">Request</span></small></h4>
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
    <%--to add addtional script--%>
</asp:Content>
