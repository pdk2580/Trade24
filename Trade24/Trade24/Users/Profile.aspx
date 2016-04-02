<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Login.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Trade24.Users.Profile" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional head--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content" style="text-align:center">
        <div class="row">
            <div class="col-lg-3">
                <img src="" />
            </div>
            <div class="col-lg-5 col-lg-offset-3" style="text-align:left">
                <div class="page-header">
                    <h1>
                        <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label> 
                         <small>
                            <asp:Label ID="lblCompany" runat="server" Text="Label"></asp:Label>
                         </small>
                    </h1>
                </div>
                <div class="form-group">
                    <label class="col-sm-2">Phone</label>
                    <div class="col-sm-10">
                        <asp:Label ID="lblPhone1" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2"></label>
                    <div class="col-sm-10 col-offset-2">
                        <asp:Label ID="lblPhone2" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2">Address</label>
                    <div class="col-sm-10">
                        <asp:Label ID="lblAddress1" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2"></label>
                    <div class="col-sm-10 col-offset-2">
                        <asp:Label ID="lblAddress2" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2"></label>
                    <div class="col-sm-10 col-offset-2">
                        <asp:Label ID="lblPostalCode" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2">Location</label>
                    <div class="col-sm-10">
                        <asp:Label ID="lblCity" runat="server" Text="Label"></asp:Label>, 
                        <asp:Label ID="lblCountry" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2"></label>
                    <div class="col-sm-10 col-offset-2">
                        <a href="/" class="btn btn-primary btn-block">Message</a><a href="/" class="btn btn-primary btn-block">Ask</a>
                    </div>
                </div>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-sm-6 col-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Request (Looking For)
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="help-block-WithNoLineBreak" style="font-style: italic; font-size: small;"></div>                                        
                                <br>
                                <span class="fa fa-user"></span>&nbsp;DR <a data-container="body" data-toggle="popover" data-placement="bottom" data-content="Click to Email." href="mailto:issgl@nus.edu.sg?subject=IVLE: EB5101">Guo Lei</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Sells
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="help-block-WithNoLineBreak" style="font-style: italic; font-size: small;"></div>                                        
                                <br>
                                <span class="fa fa-user"></span>&nbsp;DR <a data-container="body" data-toggle="popover" data-placement="bottom" data-content="Click to Email." href="mailto:issgl@nus.edu.sg?subject=IVLE: EB5101">Guo Lei</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
    <%--to add addtional script--%>
</asp:Content>        