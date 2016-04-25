<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Public.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Trade24.Home" %>

<%@ Import Namespace="Trade24.BO" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional head--%>
    <style>
        .box{
            background-color:#E9EAED;
        }
    </style>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content">
        <div class="row box">
            <div class="col-lg-3">
                <ol class="breadcrumb" style="margin: 15px 0 10px 0;">
                    <li><b>Item Categories</b></li>
                </ol>
                <div class="list-group table-of-contents">
                    <asp:Repeater runat="server" ID="rpItemCategories">
                        <ItemTemplate>
                            <a class="list-group-item" href="\ItemCategories\View.aspx?id=<%# ((ItemCategoryBO)Container.DataItem).ID %>" class="list-group-item"><%# ((ItemCategoryBO)Container.DataItem).Name %></a>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="col-xs-9 box" style="padding: 15px;">
                <div class="row">
                    <div class="col-xs-12">
                        <a href="/Users/InterestList.aspx">
                            <h2>Featuring</h2>
                        </a>
                    <div id="myFeature" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#myFeature" data-slide-to="0" class="active"></li>
                            <li data-target="#myFeature" data-slide-to="1"></li>
                            <li data-target="#myFeature" data-slide-to="2"></li>
                            <li data-target="#myFeature" data-slide-to="3"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="/Assets/img/portfolio-1.jpg" alt="Chania">
                            </div>
                            <div class="item">
                                <img src="/Assets/img/portfolio-2.jpg" alt="Chania">
                            </div>
                            <div class="item">
                                <img src="/Assets/img/portfolio-3.jpg" alt="Flower">
                            </div>
                            <div class="item">
                                <img src="/Assets/img/portfolio-4.jpg" alt="Flower">
                            </div>
                            <div class="item">
                                <img src="/Assets/img/portfolio-4.jpg" alt="Flower">
                            </div>
                            <div class="item">
                                <img src="/Assets/img/portfolio-4.jpg" alt="Flower">
                            </div>
                        </div>
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                        </div>
                </div>
                <div class="row">
                    <div class="col-sm-6" style="background-color:white;padding-bottom:25px;">
                        <h2>Unread Messages</h2>
                        <a href="">5 conversations</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <a href="/Users/InterestList.aspx">
                            <h2>Interested Item</h2>
                        </a>
                        <div id="myII" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#myII" data-slide-to="0" class="active"></li>
                                <li data-target="#myII data-slide-to="1"></li>
                                <li data-target="#myII" data-slide-to="2"></li>
                                <li data-target="#myII" data-slide-to="3"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="/Assets/img/portfolio-1.jpg" alt="Chania">
                                </div>
                                <div class="item">
                                    <img src="/Assets/img/portfolio-2.jpg" alt="Chania">
                                </div>
                                <div class="item">
                                    <img src="/Assets/img/portfolio-3.jpg" alt="Flower">
                                </div>
                                <div class="item">
                                    <img src="/Assets/img/portfolio-4.jpg" alt="Flower">
                                </div>
                                <div class="item">
                                    <img src="/Assets/img/portfolio-4.jpg" alt="Flower">
                                </div>
                                <div class="item">
                                    <img src="/Assets/img/portfolio-4.jpg" alt="Flower">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <a href="/Users/LastSeenRequest.aspx">
                            <h2>View History</h2>
                        </a>
                        <div id="myVH" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#myVH" data-slide-to="0" class="active"></li>
                                <li data-target="#myVH" data-slide-to="1"></li>
                                <li data-target="#myVH" data-slide-to="2"></li>
                                <li data-target="#myVH" data-slide-to="3"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="/Assets/img/portfolio-1.jpg" alt="Chania">
                                </div>
                                <div class="item">
                                    <img src="/Assets/img/portfolio-2.jpg" alt="Chania">
                                </div>
                                <div class="item">
                                    <img src="/Assets/img/portfolio-3.jpg" alt="Flower">
                                </div>
                                <div class="item">
                                    <img src="/Assets/img/portfolio-4.jpg" alt="Flower">
                                </div>
                                <div class="item">
                                    <img src="/Assets/img/portfolio-4.jpg" alt="Flower">
                                </div>
                                <div class="item">
                                    <img src="/Assets/img/portfolio-4.jpg" alt="Flower">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
    <%--to add addtional script--%>
</asp:Content>
