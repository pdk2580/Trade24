<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Public.Master" AutoEventWireup="True" CodeBehind="Login.aspx.cs" Inherits="Trade24.Users.Login" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional head--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content" style="text-align:center">
        <div class="row">
            <div class="col-lg-7 col-lg-offset-2">
                <asp:Panel id="pLogin" DefaultButton="btnLogin" runat="server">
                    <div class="page-header">
                        <h1><asp:Literal ID="Literal1" runat="server" Text="<% $Resources:Resources, Login %>" /> <small>Continue your journey in Trade24</small></h1>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">
                            <asp:Literal ID="Literal2" runat="server" Text="<% $Resources:Resources, Email %>" />
                        :</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Enter email" TextMode="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd"><asp:Label ID="Label2" runat="server" Text="<% $Resources:Resources, Password %>"></asp:Label>:</label>
                        <div class="col-sm-10"> 
                            <asp:TextBox ID="txtPwd" runat="server" class="form-control" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2"></label>
                        <div class="col-sm-10"> 
                            <asp:Button ID="btnLogin" runat="server" Text="<% $Resources:Resources, Login %>" class="btn btn-lg btn-primary btn-block" onClick="btnLogin_Click" />
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
    <%--to add additional script--%>
</asp:Content>