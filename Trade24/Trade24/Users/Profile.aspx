<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Login.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Trade24.Users.Profile" %>
<%@ Import Namespace="Trade24.BO" %>

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
                        <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label> <br />
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
                    <div class="col-sm-4">
                        <asp:HyperLink ID="hlinkMessage" runat="server" CssClass="btn btn-primary btn-block"><i class="glyphicon glyphicon-envelope"></i> Message</asp:HyperLink>
                    </div>
                    <div class="col-sm-4">
                        <a href="/Users/Settings.aspx" class="btn btn-primary btn-block"><i class="glyphicon glyphicon-cog"></i> Settings</a>
                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="Button1" runat="server" Text="Add Contact" CssClass="btn btn-primary btn-block" />
                    </div>
                </div>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-sm-6 col-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <b>Request (Looking For)</b>
                    </div>
                    <div class="panel-body">
                        <asp:Repeater ID="rptRequests" runat="server">
                            <ItemTemplate>
                                <div class="media">
                                    <a class="media-left" href="#">
                                        <img class="media-object" data-src="..." alt="Generic placeholder image">
                                    </a>
                                    <div class="media-body" style="text-align:left">
                                        <h4 class="media-heading"><%# ((RequestBO)Container.DataItem).Name %></h4>
                                        <%# ((RequestBO)Container.DataItem).Description %>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <b>Sells</b>
                    </div>
                    <div class="panel-body">
                        <asp:Repeater ID="rptSells" runat="server">
                            <ItemTemplate>
                                <div class="media">
                                    <a class="media-left" href="#">
                                        <img class="media-object" data-src="..." alt="Generic placeholder image">
                                    </a>
                                    <div class="media-body" style="text-align:left">
                                        <h4 class="media-heading"><%# ((RequestBO)Container.DataItem).Name %></h4>
                                        <%# ((RequestBO)Container.DataItem).Description %>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
    <%--to add addtional script--%>
</asp:Content>        