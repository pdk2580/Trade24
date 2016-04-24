<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Login.Master" AutoEventWireup="true" CodeBehind="InterestList.aspx.cs" Inherits="Trade24.Users.InterestList" %>
<%@ Import Namespace="Trade24.BO" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional header--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content">
        <div class="row">
            <div class="col-lg-7">
                <div class="page-header">
                    <h1>Your Interest List</h1>
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
                        <asp:Repeater ID="rptInterestTable" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# ((RequestBO)Container.DataItem).RequestType.ToString() %></td>
                                    <td><%# ((RequestBO)Container.DataItem).ItemCategoryID.ToString() %></td>
                                    <td><%# ((RequestBO)Container.DataItem).Name.ToString() %></td>
                                    <td><%# ((RequestBO)Container.DataItem).PlaceOfOriginCountryID.ToString() %>, <%# ((RequestBO)Container.DataItem).PlaceOfOriginCityID.ToString() %></td>
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