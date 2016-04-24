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
                <li id="navHome" runat="server"><a href="/Default.aspx"><asp:Literal ID="Literal7" runat="server" Text="<% $Resources:Resources, Home %>" /></a></li>
                <li id="navBuy" runat="server"><a href="/Products/Request.aspx"><asp:Literal ID="Literal5" runat="server" Text="<% $Resources:Resources, Request %>" /></a></li>
                <li id="navSell" runat="server"><a href="/Products/Sell.aspx"><asp:Literal ID="Literal6" runat="server" Text="<% $Resources:Resources, Sell %>" /></a></li>
            </ul>
            <div class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <asp:TextBox ID="txtSearch" placeholder="<% $Resources:Resources, SearchKeyword %>" runat="server" Cssclass="form-control"></asp:TextBox>
                </div>
                <asp:Button ID="btnSearch" runat="server" Text="" CssClass="hidden" OnClick="btnSearch_Click" />
                <button class="btn btn-default" id="ui_btn_s"><i class="glyphicon glyphicon-search"></i></button>
                <script>
                    $("button#ui_btn_s").click(function () {
                        $("#ucHeader_btnSearch").trigger("click");
                        return false;
                    });
                </script>
            </div>
            
            <ul id="publicAccountNavbar" class="nav navbar-nav navbar-right" visible="false" runat="server">
                <li><a href="~/Users/Login.aspx" runat="server"><asp:Literal ID="Literal1" runat="server" Text="<% $Resources:Resources, Login %>" /></a></li>
                <li><a href="~/Users/Register.aspx" runat="server"><asp:Literal ID="Literal2" runat="server" Text="<% $Resources:Resources, Register %>" /></a></li>
            </ul>

            <ul id="loginAccountNavbar" class="nav navbar-nav navbar-right" visible="false" runat="server">
                <li class="dropdown">
                    <a id="lblUserName" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" runat="server"></a>
                    <ul class="dropdown-menu">
                        <li><a href="/Users/Profile.aspx?id=<%= loginAccount.ID.ToString() %>">View Profile</a></li>
                        <li><a href="/Users/LastSeenRequests.aspx"><asp:Literal ID="Literal8" runat="server" Text="<% $Resources:Resources, VisitHistory %>" /></a></li>
                        <li><a href="/Users/InterestList.aspx">Interest List</a></li>
                        <li role="separator" class="divider"></li>
                        <li><asp:LinkButton ID="lblLogout" runat="server" OnClick="Logout"><asp:Literal ID="Literal3" runat="server" Text="<% $Resources:Resources, Logout %>" /></asp:LinkButton></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</nav>