<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Login.Master" AutoEventWireup="true" CodeBehind="LastSeenRequests.aspx.cs" Inherits="Trade24.Users.LastSeenRequests" %>
<%@ Import Namespace="Trade24.BO" %>
<%@ Import Namespace="Trade24.BLL" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional header--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content">
        <div class="row">
            <div class="col-lg-7">
                <div class="page-header">
                    <h1>View History</h1>
                </div>
                <table class="table table-striped table-hover ">
                    <thead>
                        <tr>
                            <th>Product Type</th>
                            <th>Category</th>
                            <th>Product Name</th>
                            <th>Origin</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptVisitTable" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# ((RequestBO)Container.DataItem).RequestTypeToString() %></td>
                                    <td><%# ItemCategoryBLL.GetCategory(((RequestBO)Container.DataItem).ItemCategoryID).Name %></td>
                                    <td><a href="/Products/<%# ((RequestBO)Container.DataItem).RequestTypeToString() %>.aspx?id=<%# ((RequestBO)Container.DataItem).ID.ToString() %>"><%# ((RequestBO)Container.DataItem).Name.ToString() %></a></td>
                                    <td><%# CountryBLL.GetCountryName(((RequestBO)Container.DataItem).PlaceOfOriginCountryID) %>, <%# CityBLL.GetCityName(((RequestBO)Container.DataItem).PlaceOfOriginCityID) %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
    <%--to add additional script--%>
</asp:Content>