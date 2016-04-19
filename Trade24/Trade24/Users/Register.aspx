<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Public.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Trade24.Users.Register" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional header--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content" style="text-align:center">
        <div class="row">
            <div class="col-lg-7 col-lg-offset-2">
                <asp:Panel ID="pRegister" DefaultButton="btnRegister" runat="server">
                    <div class="page-header">
                        <h1><asp:Literal ID="Literal1" runat="server" Text="<% $Resources:Resources, Register %>" /> <small><asp:Literal ID="Literal2" runat="server" Text="<% $Resources:Resources, RegisterTagline %>" /></small></h1>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="email"><asp:Literal ID="Literal3" runat="server" Text="<% $Resources:Resources, Email %>" />:</label><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Email must be supplied"></asp:RequiredFieldValidator>
                        </strong>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="<% $Resources:Resources, EnterEmail %>" TextMode="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name"><asp:Literal ID="Literal4" runat="server" Text="<% $Resources:Resources, FullName %>" />:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFName" CssClass="alert-danger" Display="Dynamic" ErrorMessage="First Name must be supplied"></asp:RequiredFieldValidator>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtFName" runat="server" class="form-control" placeholder="<% $Resources:Resources, FirstName %>" TextMode="SingleLine"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtLName" runat="server" class="form-control" placeholder="<% $Resources:Resources, LastName %>" TextMode="SingleLine"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="ctry"><asp:Literal ID="Literal5" runat="server" Text="<% $Resources:Resources, Country %>" />:</label><asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ddl_Country" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Please select a country" MaximumValue="245" MinimumValue="1"></asp:RangeValidator>
                        <div class="col-sm-8">
                            <asp:DropDownList ID="ddl_Country" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddl_Country_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="true">
                                <Items>
                                    <asp:ListItem Text="<% $Resources:Resources, Select %>" Value="" />
                                </Items>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="cty"><asp:Literal ID="Literal6" runat="server" Text="<% $Resources:Resources, City %>" />:</label><asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="ddl_City" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Please select a city" MaximumValue="3879" MinimumValue="1"></asp:RangeValidator>
                        <div class="col-sm-8">
                            <asp:DropDownList ID="ddl_City" CssClass="form-control" runat="server" Enabled="False">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="pwd"><asp:Literal ID="Literal7" runat="server" Text="<% $Resources:Resources, Password %>" />:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Password must be supplied"></asp:RequiredFieldValidator>
                        <div class="col-sm-8"> 
                            <asp:TextBox ID="txtPwd" runat="server" class="form-control" placeholder="<% $Resources:Resources, Password %>" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="pwd2"><asp:Literal ID="Literal8" runat="server" Text="<% $Resources:Resources, ConfirmPassword %>" />:</label><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtPwd2" CssClass="alert-danger" Display="Dynamic" ErrorMessage="Confirmed password not same"></asp:CompareValidator>
                        <div class="col-sm-8"> 
                            <asp:TextBox ID="txtPwd2" runat="server" class="form-control" placeholder="<% $Resources:Resources, Password %>" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4"></label>
                        <div class="col-sm-8"> 
                            <asp:Button ID="btnRegister" runat="server" Text="<% $Resources:Resources, Register %>" class="btn btn-lg btn-primary btn-block" OnClick="btnRegister_Click" />
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