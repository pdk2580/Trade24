<%@ Page Language="C#" MasterPageFile="~/Layouts/Default.Login.Master" AutoEventWireup="true" CodeBehind="AddSell.aspx.cs" Inherits="Trade24.Products.AddSell" %>

<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <%--to add additional head--%>
</asp:Content>

<asp:Content ID="cMain" ContentPlaceHolderID="main" runat="server">
    <div class="container main content" style="padding-top:25px;">
        <div class="row">
            <div class="col-lg-5">
                <img id="pImg" src="" style="max-width:480px;" />
            </div>
            <div class="col-lg-5">
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Product Name</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtPn" runat="server" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Product Category</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtPc" runat="server" TextMode="SingleLine" CssClass="form-control"></asp:TextBox><button class="btn btn-default">Select</button>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Min Qty Order</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtQty" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Price</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtP" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Product Description</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtPd" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Images</label>
                <div class="col-sm-8">
                    <asp:FileUpload ID="imgs1" runat="server" CssClass="form-control" />
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-4"></label>
                <div class="col-sm-8">
                    <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-block btn-primary" OnClick="submit_Click" />
                </div>
              </div>
            </div>
            </div>
        </div>
</asp:Content>

<asp:Content ID="cScript" ContentPlaceHolderID="script" runat="server">
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#pImg').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#main_main_imgs1").change(function () {
            readURL(this);
        });
    </script>
</asp:Content>
