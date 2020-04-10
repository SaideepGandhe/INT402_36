<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="AgroBasket.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .button {
           
            font-size: 20px;
            padding: 10px;
            width: 150px;
            cursor:pointer;
            margin: 5px;
        }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h2>Your AgroProduct Cart Items are as follows</h2>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bahnschrift" Font-Size="14pt" ForeColor="Red" Text="Label"></asp:Label>
    </div>
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" Text="Continue Shopping" NavigateUrl="~/Product.aspx"></asp:HyperLink>
    </div>
    <div style="text-align:center;">
        <asp:GridView ID="GridView1" runat="server" ShowFooter="True" EmptyDataText="No items in your cart." AutoGenerateColumns="False" BackColor="Orange" BorderColor="Green" BorderStyle="Solid" BorderWidth="3px" ForeColor="White" Height="207px" Width="751px" Font-Size="12pt" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="Sr no.">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pid" HeaderText="Product ID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="pImage" HeaderText="Product Image">
                    <ControlStyle Height="300px" Width="340px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="pname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pprice" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pquantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ptotalprice" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="Green" />
            <HeaderStyle BackColor="Green" BorderColor="Green" BorderStyle="Solid" BorderWidth="3px" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" BackColor="DarkOrange" BorderColor="Green" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Bahnschrift" CssClass="button" OnClick="Button1_Click" />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
