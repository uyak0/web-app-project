<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu1.aspx.cs" Inherits="Web_App_Project.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="main.css"/>
    <link rel="stylesheet" href="Menu.css"/>
    <title>Menu</title>
    <style type="text/css">
        .logo {
    margin: 6em 0 6em 0;
    width: 500px;
    position: relative;
    top: -9px;
    left: 441px;
}

        .lattee {
            height: 227px;
            width: 228px;
            margin-top: 0px;
        }
        .Frappe {
            height: 227px;
            width: 228px;
            top: -634px;
            left: 939px;
            margin-top: 1px;
        }
        .greentea {
            height: 227px;
            width: 228px;
            top: -327px;
            left: 569px;
            margin-top: 0px;
        }

    </style>
</head>
<body>
     
   
      
   

    <form id="form1" runat="server">
        
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

        <div class="navbar">
            <a href="Home.aspx"> Home </a>
            <a href="Menu.aspx"> Menu</a> 
            <a href="Rewards.aspx"> Rewards </a>
            <a href="Account.aspx"> Account </a>
        </div>

       
    </form>
    </body>
</html>
