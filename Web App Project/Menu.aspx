<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Web_App_Project.Menu1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Menu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Menu.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <a href="../Home.aspx"><img class="logo" src="../Assets/drinkables-logo.png" /></a>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatLayout="Flow" RepeatDirection="Horizontal"  CssClass="drinkContainer">
        <ItemTemplate>
            <div class="latte">
                  <asp:Image ID="drinkImage" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' AlternateText="Drink Image" CssClass="drinkImage" />
                  <h4 class="drinkName" style="color: white;"><%# Eval("Drinks_Name") %></h4>
                  <p class="drinkPrice" style="color: white;"><%# Eval("Price") %></p>
                  
                  <asp:Button ID="addLatte" runat="server" OnClick="btnLatte_Click" CommandArgument='<%# "ImageUrl=" + Eval("ImageUrl") + "&Drinks_Name=" + Eval("Drinks_Name") + "&Price=" + Eval("Price") %>' Text="Add" BackColor="#FF6600" />
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Menu] WHERE Category <> 'Custom'"></asp:SqlDataSource>
   <!-- If need to use the SqlDataSource remember to specify DataSourceID = "SqlDataSource1" -->

    
    <div class="viewCart">
        <asp:Button ID="vCart" runat="server" Text="View Cart" OnClick="btnvCart_Click" BackColor="#FF9933" BorderStyle="Dashed" Height="41px" style="margin-top: 0px; width: 2796px;" Font-Bold="True" />
    
    </div>

</asp:Content>
