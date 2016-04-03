<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="Trade24.UserControls.Header" %>

<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="~/Default.aspx" runat="server">Trade24</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/default.aspx">Home</a></li>
                <li><a href="/products/request.aspx">Request</a></li>
                <li><a href="/products/sell.aspx">Sell</a></li>
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
            
            <ul id="publicAccountNavbar" class="nav navbar-nav navbar-right" visible="false" runat="server">
                <li><a href="~/Users/Login.aspx" runat="server">Login</a></li>
                <li><a href="~/Users/Register.aspx" runat="server">Register</a></li>
            </ul>
            <ul id="loginAccountNavbar" class="nav navbar-nav navbar-right" visible="false" runat="server">
                <li><asp:LinkButton ID="lblUserName" runat="server" OnClick="ViewProfile"></asp:LinkButton></li>
                <li><asp:LinkButton ID="lblLogout" runat="server" OnClick="Logout">Logout</asp:LinkButton></li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</nav>