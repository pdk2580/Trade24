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
                <li id="navHome" runat="server"><a href="/default.aspx">Home</a></li>
                <li id="navBuy" runat="server"><a href="/products/request.aspx">Request</a></li>
                <li id="navSell" runat="server"><a href="/products/sell.aspx">Sell</a></li>
                <%--<li class="dropdown">
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
                </li>--%>
            </ul>
            <div class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <asp:TextBox ID="txtSearch" placeholder="Search Keyword" runat="server" Cssclass="form-control"></asp:TextBox>
                </div>
                <asp:Button ID="btnSearch" runat="server" Text="" CssClass="hidden" OnClick="btnSearch_Click" />
                <button class="btn btn-default" id="ui_btn_s"><i class="glyphicon glyphicon-search"></i></button>
                <script>
                    $("button#ui_btn_s").click(function () {
                        $("#ucHeader_btnSearch").trigger("click");
                        alert("The paragraph was clicked.");
                        return false;
                    });
                </script>
            </div>
            
            <ul id="publicAccountNavbar" class="nav navbar-nav navbar-right" visible="false" runat="server">
                <li><a href="~/Users/Login.aspx" runat="server">Login</a></li>
                <li><a href="~/Users/Register.aspx" runat="server">Register</a></li>
            </ul>
            <ul id="loginAccountNavbar" class="nav navbar-nav navbar-right" visible="false" runat="server">
                <%--<li><asp:LinkButton ID="lblUserName" runat="server" OnClick="ViewProfile"></asp:LinkButton></li>--%>
                <li class="dropdown">
                    <a id="lblUserName" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" runat="server"></a>
                    <ul class="dropdown-menu">
                        <li><a href="/Users/Profile.aspx?id=<%= loginAccount.ID.ToString() %>">View profile</a></li>
                        <li><a href="#">Link2</a></li>
                        <li><a href="#">Link3</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Actions</li>
                        <li><a href="/products/addrequest.aspx">Request product</a></li>
                        <li><a href="/products/addsell.aspx">Sell product</a></li>
                    </ul>
                </li>
                <li><asp:LinkButton ID="lblLogout" runat="server" OnClick="Logout">Logout</asp:LinkButton></li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</nav>