<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="Trade24.ItemCategories.View" %>
<%@ Import Namespace="Trade24.BO" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trade24</title>
    <link href="/Assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/Assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/Assets/css/owl.carousel.css" rel="stylesheet" />
    <link href="/Assets/css/style.css" rel="stylesheet" />
    <style>
    @import url(http://fonts.googleapis.com/css?family=roboto);
    @charset "UTF-8";

    .navigation {
      padding: 0;
      margin: 0;
      border: 0;
      line-height: 1;
    }

    .navigation ul,
    .navigation ul li,
    .navigation ul ul {
      list-style: none;
      margin: 0;
      padding: 0;
    }

    .navigation ul {
      position: relative;
      z-index: 500;
      float: left;
    }

    .navigation ul li {
      float: left;
      min-height: 0.05em;
      line-height: 1em;
      vertical-align: middle;
      position: relative;
    }

    .navigation ul li.hover,
    .navigation ul li:hover {
      position: relative;
      z-index: 510;
      cursor: default;
    }

    .navigation ul ul {
      visibility: hidden;
      position: absolute;
      top: 100%;
      left: 0px;
      z-index: 520;
      width: 100%;
    }

    .navigation ul ul li { float: none; }

    .navigation ul ul ul {
      top: 0;
      right: 0;
    }

    .navigation ul li:hover > ul { visibility: visible; }

    .navigation ul ul {
      top: 0;
      left: 99%;
    }

    .navigation ul li { float: none; }

    .navigation ul ul { margin-top: 0.05em; }

    .navigation {
      width: 13em;
      background: #333333;
      font-family: 'roboto', Tahoma, Arial, sans-serif;
      zoom: 1;
    }

    .navigation:before {
      content: '';
      display: block;
    }

    .navigation:after {
      content: '';
      display: table;
      clear: both;
    }

    .navigation a {
      display: block;
      padding: 1em 1.3em;
      color: #ffffff;
      text-decoration: none;
      text-transform: uppercase;
    }

    .navigation > ul { width: 13em; }

    .navigation ul ul { width: 13em; }

    .navigation > ul > li > a {
      border-right: 0.3em solid #34A65F;
      color: #ffffff;
    }

    .navigation > ul > li > a:hover { color: #ffffff; }

    .navigation > ul > li a:hover,
    .navigation > ul > li:hover a { background: #34A65F; }

    .navigation li { position: relative; }

    .navigation ul li.has-sub > a:after {
      content: '»';
      position: absolute;
      right: 1em;
    }

    .navigation ul ul li.first {
      -webkit-border-radius: 0 3px 0 0;
      -moz-border-radius: 0 3px 0 0;
      border-radius: 0 3px 0 0;
    }

    .navigation ul ul li.last {
      -webkit-border-radius: 0 0 3px 0;
      -moz-border-radius: 0 0 3px 0;
      border-radius: 0 0 3px 0;
      border-bottom: 0;
    }

    .navigation ul ul {
      -webkit-border-radius: 0 3px 3px 0;
      -moz-border-radius: 0 3px 3px 0;
      border-radius: 0 3px 3px 0;
    }

    .navigation ul ul { border: 1px solid #34A65F; }

    .navigation ul ul a { color: #ffffff; }

    .navigation ul ul a:hover { color: #ffffff; }

    .navigation ul ul li { border-bottom: 1px solid #0F8A5F; }

    .navigation ul ul li:hover > a {
      background: #4eb1ff;
      color: #ffffff;
    }

    .navigation.align-right > ul > li > a {
      border-left: 0.3em solid #34A65F;
      border-right: none;
    }

    .navigation.align-right { float: right; }

    .navigation.align-right li { text-align: right; }

    .navigation.align-right ul li.has-sub > a:before {
      content: '+';
      position: absolute;
      top: 50%;
      left: 15px;
      margin-top: -6px;
    }

    .navigation.align-right ul li.has-sub > a:after { content: none; }

    .navigation.align-right ul ul {
      visibility: hidden;
      position: absolute;
      top: 0;
      left: -100%;
      z-index: 598;
      width: 100%;
    }

    .navigation.align-right ul ul li.first {
      -webkit-border-radius: 3px 0 0 0;
      -moz-border-radius: 3px 0 0 0;
      border-radius: 3px 0 0 0;
    }

    .navigation.align-right ul ul li.last {
      -webkit-border-radius: 0 0 0 3px;
      -moz-border-radius: 0 0 0 3px;
      border-radius: 0 0 0 3px;
    }

    .navigation.align-right ul ul {
      -webkit-border-radius: 3px 0 0 3px;
      -moz-border-radius: 3px 0 0 3px;
      border-radius: 3px 0 0 3px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-default navbar-static-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="\Default.aspx">Trade24</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#contact">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Nav header</li>
                                    <li><a href="#">Separated link</a></li>
                                    <li><a href="#">One more separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                    <div class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Users\Login.aspx">Login</a></li>
                            <li><a href="Users\Register.aspx">Register</a></li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </nav>
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
                                        <!--
                                        <li class="has-sub"><a href="#">Submenu 1.1.2</a>
                                        <ul>
                                            <li><a href="#">Submenu 1.1.2.1</a></li>
                                            <li><a href="#">Submenu 1.1.2.2</a></li>
                                        </ul>
                                            -->
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
            <div class="container footer">
                <hr />
                &copy; Trade24 | <a href="">Feedback</a> | <a href="">Business Relation</a> | <a href="">About Us</a>
            </div>
        </div>
    </form>
</body>
<script src="/Assets/js/jquery-1.11.1.min.js"></script>
<script src="/Assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="/Assets/js/bootstrap.min.js"></script>
<script src="/Assets/js/bootstrap-hover-dropdown.min.js"></script>
<script src="/Assets/js/jquery.magnific-popup.min.js"></script>
<script src="/Assets/js/owl.carousel.min.js"></script>
<script src="/Assets/js/custom.js"></script>
</html>
