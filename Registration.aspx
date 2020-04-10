<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AgroBasket.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            color:white;
            background-color:darkorange;
        }
        .auto-style2 {
            width: 385px;
            align-content:center;
        }
        .button {
            align-self: center;
            border-radius: 4px;
            background-color: green;
            border: none;
            color: #FFFFFF;
            text-align: center;
            font-size: 20px;
            padding: 10px;
            width: 385px;
            cursor:pointer;
            margin: 5px;
        }
        .textbox{
            height:25px;
            padding:0 10px;
            border-color:green;
            border-width:2px;
            border-style:solid;
            display:block;
            font-family:'Montserrat',sans-serif;
            text-indent:1px;
            color:green;
            text-shadow:0 1px 2px rgba(0,0,0,0.3);
            font-size:20px;
            width:287px; 
        }

        
        .auto-style3 {
            width: 385px;
            align-content: center;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }

        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center;">REGISTRATION FORM</h2>
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align:center;background-color:green;"><b>Personal Information</b></td>
        </tr>
        <tr>
            <td class="auto-style2"><b>First Name</b></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><b>Last Name</b></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><b>Email ID</b></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><b>Gender</b></td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Width="162px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><b>Phone</b></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Phone" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><b>Address</b></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;background-color:green;"><b>Login Information</b></td>
            
        </tr>
        <tr>
            <td class="auto-style2"><b>Password</b></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><b>Confirm Password</b></td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server"  CssClass="button"  Text="Sign Up" OnClick="Button1_Click" />
                
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Green" Text="Congratulations!!!. Registered Successfully, "></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Register]"></asp:SqlDataSource>
</asp:Content>
