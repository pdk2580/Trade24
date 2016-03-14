<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Trade24.Users.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register - Trade24</title> 
    <link href="/Assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/Assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/Assets/css/owl.carousel.css" rel="stylesheet" />
    <link href="/Assets/css/style.css" rel="stylesheet" />
</head>
<body>
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
                    <div class="col-lg-12">
                        <div class="page-header">
                            <h1>Register <small>Start explore our Trade24 world</small></h1>
                        </div>
                        <form id="form3" runat="server" class="form-horizontal" role="form">
                          <div class="form-group">
                            <label class="control-label col-sm-2" for="email">Email:</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control" id="email" placeholder="Enter email">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-sm-2" for="name">Name:</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="name" placeholder="Enter name">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-sm-2" for="ctry">Country:</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="ctry" placeholder="Select country">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-sm-2" for="cty">City:</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="cty" placeholder="Select city">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-sm-2" for="pwd">Password:</label>
                            <div class="col-sm-10"> 
                              <input type="password" class="form-control" id="pwd" placeholder="Enter password">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-sm-2" for="pwd2"> Confirm Password:</label>
                            <div class="col-sm-10"> 
                              <input type="password" class="form-control" id="pwd2" placeholder="Re-enter password">
                            </div>
                          </div>


                          <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
                      </form>
                    </div>
                </div>
            </div>
            <div class="container footer">
                <hr />
                &copy; Trade24 | <a href="">Feedback</a> | <a href="">Business Relation</a> | <a href="">About Us</a>
            </div>
        </div>
</body>
<script src="Assets/js/jquery-1.11.1.min.js"></script>
<script src="Assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="Assets/js/bootstrap.min.js"></script>
<script src="Assets/js/bootstrap-hover-dropdown.min.js"></script>
<script src="Assets/js/jquery.magnific-popup.min.js"></script>
<script src="Assets/js/owl.carousel.min.js"></script>
<script src="Assets/js/custom.js"></script>
</html>