<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AgroBasket.WebForm1" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sidebar1"><asp:Image ID="Image1" runat="server" ImageUrl="~/vegi.jpg" Height="279px" Width="741px" /></div>
        <div id="sidebar2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VEGETABLES<br />
            <br />
            &gt;&gt;Tomatoes ar rich in Vitamin C.<br />
            &gt;&gt;Avacado lower your colestrol.&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &gt;&gt;Spinach is anti-Inflammatory.
            <br />
            &gt;&gt;Cucumbers hydrate the body.
            <br />
            &gt;&gt;Grapefruit boost liver funcitons.<br />
            &gt;&gt;Peppers loaded with antioxidants.</div>
    <div id="sidebar3"> <asp:Image ID="Image2" runat="server" ImageUrl="~/fruits.jpg" Height="276px" Width="741px"/></div>
     <div id="sidebar4">
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FRUITS<br />
         <br />
         &gt;&gt;Bananas help remain focused and 
         <br />
         motivated.
         <br />
         &gt;&gt;Pineapples help fight arthritis.
         <br />
         &gt;&gt;Apples build resistance against infections. &gt;&gt;Grapes relax blood vessels.
         <br />
         &gt;&gt;Strawberries fight against cancer and aging.<br />
         &gt;&gt;Mangoes boost body's reliability.
         <br />
         &gt;&gt;Oranges promote great skin and vision.</div>
     <div id="sidebar5"><asp:Image ID="Image3" runat="server" ImageUrl="~/spice.jpg" Height="330px" style="margin-bottom: 11px" Width="742px"/></div>
    <div id="sidebar6">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SPICES<br />
        <br />
        &gt;&gt;Red peppers are rich in Vitamin C and high in antioxidants.<br />
        &gt;&gt;Green Cardamom is intensly aromatic, digestive, anti-inflammatory.<br />
        &gt;&gt;Cinnamon lowers blood sugar levels and has powerful anti-diabetic effect.
        <br />
        &gt;&gt;Pippermit relieves pain and may reduce nausea. 
        <br />
        &gt;&gt;Turmeric contains curcumin, substance with anti-inflamatory effects.<br />
        &gt;&gt;Ginger can treat nausea and has antiinflammatory properties.
    </div> 
    <p>
    </p>
</asp:Content>
