<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AgroBasket.WebForm3" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 100%;
        }
        .auto-style2 {
            height: 196px;
            width: 441px;
            float:left;
        }
        .auto-style3 {
            width: 227px;
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
            margin-left:50px;
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
            width: 150px;
            cursor:pointer;
            margin: 5px;
        }

        .auto-style4 {
            width: 227px;
            height: 42px;
        }

        .auto-style5 {
            width: 164px;
            height: 197px;
            float:left;
        }
        .auto-style6 {
            width: 145px;
            height: 193px;
            float:right;
        }

       
  

    .auto-style7 {
        margin-top: 162px;
    }
    .auto-style8 {
        width: 100%;
        height: 253px;
    }

       
  

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="text-align:center;color:red;">
    <asp:Label ID="Label1" runat="server" Text="EmailID or Password is incorrect."></asp:Label>
        </div>
    <div class="auto-style5">
       
       <asp:Image ID="Image2" runat="server" ImageUrl="~/a1.png" Height="200px" Width="146px"/>
       
   </div>
    
    <div class="auto-style2">
        
        <table class="auto-style8" style="background-image:url(agrop.jpg);">
            <tr>
                <td colspan="2" style="text-align:center;background-color:green;color:white;"><b>Login</b></td>
                
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Placeholder="Email"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" TextMode="Password" Placeholder="Password"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Log In" CssClass="button" OnClick="Button1_Click" />
                </td>
                
            </tr>
        </table>
    </div>
    <div class="auto-style6">
        <asp:Image ID="Image3" runat="server" ImageUrl="~/a2.png"  Height="189px" Width="146px"/>

    </div>
    
    <div style="padding-top:100px;" class="auto-style7">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="2000">
                </asp:Timer>
                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/SlideXML.xml" Height="300px" Width="750px" />
            </ContentTemplate>
        </asp:UpdatePanel>
        </div>
        
  </asp:Content>
