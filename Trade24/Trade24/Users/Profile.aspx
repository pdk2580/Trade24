<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Trade24.Users.Login" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional head--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content" style="text-align:center">
        <div class="row">
            <div class="col-lg-5 col-lg-offset-3">
                <div class="page-header">
                    <h1>Name <small>Company Name</small></h1>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Phone</label>
                    <div class="col-sm-10">
                        Phone1
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10 col-offset-2">
                        Phone2
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Address</label>
                    <div class="col-sm-10">
                        Address1
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10 col-offset-2">
                        Address2
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10 col-offset-2">
                        Postal Code
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Location</label>
                    <div class="col-sm-10">
                        City, Country
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Email</label>
                    <div class="col-sm-10">
                        Ask
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
    <%--to add addtional script--%>
</asp:Content>        