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
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
    <%--to add additional script--%>
</asp:Content>