<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Trade24.Default" %>
<%@ Import Namespace="Trade24.BO" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trade24</title>
    <link href="Assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="Assets/css/owl.carousel.css" rel="stylesheet" />
    <link href="Assets/css/style.css" rel="stylesheet" />
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
                        <a class="navbar-brand" href="#">Trade24</a>
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
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="../navbar/">Default</a></li>
                            <li class="active"><a href="./">Static top <span class="sr-only">(current)</span></a></li>
                            <li><a href="../navbar-fixed-top/">Fixed top</a></li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </nav>
            <div class="container main content">
                <div class="row">
                    <div class="col-lg-2">
                        <ol class="breadcrumb" style="margin-bottom: 5px;">
                            <li>Item Categories</li>
                        </ol>
                        <div class="list-group">
                            <a href="#" class="list-group-item">First item</a>
                            <a href="#" class="list-group-item">Second item</a>
                            <a href="#" class="list-group-item">Third item</a>
                        </div>
                    </div>
                    <div class="col-xs-10" style="background-color:white; padding:15px;">
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
                <div class="row">
                    <asp:Repeater runat="server" ID="rpCities">
                        <ItemTemplate>
                            <div>
                                <asp:Label runat="server" ID="lblCityName" Text="<%# ((CityBO)Container.DataItem).cityName %>"></asp:Label>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="container footer">
                <hr />
                &copy; Trade24 | <a href="">Feedback</a> | <a href="">Business Relation</a> | <a href="">About Us</a>
            </div>
        </div>
    </form>
</body>
<script src="Assets/js/jquery-1.11.1.min.js"></script>
<script src="Assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="Assets/js/bootstrap.min.js"></script>
<script src="Assets/js/bootstrap-hover-dropdown.min.js"></script>
<script src="Assets/js/jquery.magnific-popup.min.js"></script>
<script src="Assets/js/owl.carousel.min.js"></script>
<script src="Assets/js/custom.js"></script>
</html>
