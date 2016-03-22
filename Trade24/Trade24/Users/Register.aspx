<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Trade24.Users.Register" %>
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
                        <a class="navbar-brand" href="\Default.aspx">Trade24</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="#">Home</a></li>
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
                            <li><a href="Login.aspx">Login</a></li>
                            <li class="active"><a href="#">Register</a></li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </nav>
            <div class="container main content" style="text-align:center">
                <div class="row">
                    <div class="col-lg-7 col-lg-offset-2">
                        <form id="form3" runat="server" class="form-horizontal" role="form">
                        <div class="page-header">
                            <h1>Register <small>Start explore our Trade24 world</small></h1>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        </div>
                          <div class="form-group">
                            <label class="control-label col-sm-4" for="email">Email:</label><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <strong>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Email must be supplied"></asp:RequiredFieldValidator>
                            </strong>
                            <div class="col-sm-8">
                              <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Enter email" TextMode="Email"></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-sm-4" for="name">First Name:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFName" CssClass="alert-danger" Display="Dynamic" ErrorMessage="First Name must be supplied"></asp:RequiredFieldValidator>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtFName" runat="server" class="form-control" placeholder="Enter first name" TextMode="SingleLine"></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-sm-4" for="name">Last Name:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLName" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Last Name must be supplied"></asp:RequiredFieldValidator>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtLName" runat="server" class="form-control" placeholder="Enter last name" TextMode="SingleLine"></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-sm-4" for="ctry">Country:</label><asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ddl_Country" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Please select a country" MaximumValue="245" MinimumValue="1"></asp:RangeValidator>
                            <div class="col-sm-8">
                                <asp:DropDownList ID="ddl_Country" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddl_Country_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="true">
                                   <Items>
                                       <asp:ListItem Text="Select" Value="" />
                                   </Items>
                                </asp:DropDownList>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-sm-4" for="cty">City:</label><asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="ddl_City" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Please select a city" MaximumValue="3879" MinimumValue="1"></asp:RangeValidator>
                            <div class="col-sm-8">
                               <asp:DropDownList ID="ddl_City" CssClass="form-control" runat="server" Enabled="False">
                                </asp:DropDownList>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-sm-4" for="pwd">Password:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Password must be supplied"></asp:RequiredFieldValidator>
                            <div class="col-sm-8"> 
                                <asp:TextBox ID="txtPwd" runat="server" class="form-control" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-sm-4" for="pwd2"> Confirm Password:</label><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtPwd2" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Confirmed password not same"></asp:CompareValidator>
                            <div class="col-sm-8"> 
                              <asp:TextBox ID="txtPwd2" runat="server" class="form-control" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-sm-4"></label>
                            <div class="col-sm-8"> 
                                <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn btn-lg btn-primary btn-block" OnClick="btnRegister_Click" />
                            </div>
                          </div>


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
<script src="/Assets/js/jquery-1.11.1.min.js"></script>
<script src="/Assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="/Assets/js/bootstrap.min.js"></script>
<script src="/Assets/js/bootstrap-hover-dropdown.min.js"></script>
<script src="/Assets/js/jquery.magnific-popup.min.js"></script>
<script src="/Assets/js/owl.carousel.min.js"></script>
<script src="/Assets/js/custom.js"></script>
</html>