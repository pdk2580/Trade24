<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="Trade24.UserControls.Footer" %>

<div class="container footer">
    <hr />
    <div style="float:left">
        <div class="form-group">
            <label class="control-label col-sm-5" for="email">
                <asp:Literal ID="Literal2" runat="server" Text="<% $Resources:Resources, Language %>" />
            </label>
            <div class="col-sm-7">
                <asp:DropDownList ID="ddlLanguages" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlLanguages_SelectedIndexChanged" CssClass="form-control">
                    <asp:ListItem Text="English" Value="en" />
                    <asp:ListItem Text="Bahasa Indonesia" Value="id" />
                    <asp:ListItem Text="Korean 한국어" Value="ko" />
                    <asp:ListItem Text="Thai" Value="th" />
                    <asp:ListItem Text="Malay" Value="my" />
                    <asp:ListItem Text="Vietnamese" Value="vn" />
                    <asp:ListItem Text="Myanmar" Value="mm" />
                    <asp:ListItem Text="Chinese (Simplified)" Value="cns" />
                    <asp:ListItem Text="Chinese (Traditional)" Value="cnt" />
                    <asp:ListItem Text="Cambodia" Value="cnt" />
                    <asp:ListItem Text="Philipines" Value="ph" />
                    <asp:ListItem Text="Brunei" Value="bn" />
                    <asp:ListItem Text="Laos" Value="la" />
                </asp:DropDownList>
            </div>
        </div>
    </div>
    <div style="float:right">&copy; Trade24 | <a href=""><asp:Label ID="Label4" runat="server" Text="<% $Resources:Resources, Feedback %>"></asp:Label></a> | <a href=""><asp:Label ID="Label2" runat="server" Text="<% $Resources:Resources, BusinessRelation %>"></asp:Label></a> | <a href=""><asp:Label ID="Label1" runat="server" Text="<% $Resources:Resources, AboutUs %>"></asp:Label></a></div>
</div>