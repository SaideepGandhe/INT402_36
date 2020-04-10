<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="AgroBasket.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="PId" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="4" Height="290px" Width="310px" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align:center;">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname") %>' Font-Bold="True" Font-Names="Bahnschrift"></asp:Label>
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PImage") %>' BorderColor="Green" BorderStyle="Solid" Height="100px" Width="180px"  />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">
                        <asp:Label ID="Label2" runat="server" Text="Price: Rs." Font-Bold="True" Font-Italic="True" Font-Names="Arial" ForeColor="Green"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="True" Font-Italic="True" Font-Names="Arial" ForeColor="Green"></asp:Label>
                   
                    </td>
                </tr>
                <tr>
                    <td align="center">Quantity
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="55px" ImageAlign="Middle" ImageUrl="~/addc.png" Width="192px" CommandArgument='<%# Eval("PId") %>' CommandName="AddToCart" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
</asp:Content>
