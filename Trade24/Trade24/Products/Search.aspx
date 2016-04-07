﻿<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Public.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Trade24.Products.Search" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional head--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <b>Search</b>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Keyword:</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Enter email" TextMode="Email"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Looking for</label>
                <div class="col-sm-1">
                    <asp:RadioButton ID="rbLfBuyer" runat="server" /> Buyer
                </div>
                <div class="col-sm-1">
                    <asp:RadioButton ID="rbLfSeller" runat="server" /> Seller
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Sort by:</label>
                <div class="col-sm-10">
                    <div class="col-sm-1">
                        <asp:RadioButton ID="rbSbPrice" runat="server" /> Prices
                    </div>
                    <div class="col-sm-2">
                        <asp:RadioButton ID="rbSbSupplierName" runat="server" /> Supplier
                    </div>
                    <div class="col-sm-2">
                        <asp:RadioButton ID="rbSbCountryName" runat="server" /> Country
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2"></label>
                <div class="col-sm-10"> 
                    <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-lg btn-primary btn-block" OnClick="btnLogin_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
</asp:Content>
