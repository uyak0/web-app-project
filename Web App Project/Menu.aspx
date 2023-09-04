<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Web_App_Project.Menu1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Menu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Menu.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <img class="logo" src="Assets/drinkables-logo.png" />

    <div class="latte">
        <img class="lattee" src="Assets/latte2.PNG" />
        <h4 class="lattetxt">Latte</h4>
        <asp:LinkButton ID="addLatte" runat="server" OnClick="btnLatte_Click">Add</asp:LinkButton>
        
    </div>
    
    <div class="tea">
        <img class="greentea" src="Assets/greentea.PNG" />
        <h4 class="teatxt">Green Tea</h4>       
        <asp:LinkButton ID="addGreenTea" runat="server" OnClick="btnGreentea_Click">Add</asp:LinkButton>
        
        
        
    </div>



    <div class="frappe">
        <img class="Frappe" src="Assets/frappe.PNG" />
        <h4 class="frappetxt">Frappe</h4>
        <asp:LinkButton ID="addFrappe" runat="server" OnClick="btnFrappe_Click">Add</asp:LinkButton>
    </div>

    <div class="viewCart">
        <asp:Button ID="vCart" runat="server" Text="View Cart" OnClick="btnvCart_Click" BackColor="#FF9933" BorderStyle="Dashed" Height="41px" style="margin-top: 0px; width: 2796px;" />

    </div>

</asp:Content>
