<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Web_App_Project.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="main.css"/>
    <link rel="stylesheet" href="Order.css"/>
    <title>Order</title>
    <style type="text/css">
        #form1 {
            height: 464px;
        }
        .order {
            height: 344px;
            width: 395px;
            top: 7px;
            left: 567px;
        }
    </style>
</head>
<body>

  
    <form id="form1" runat="server">
        
        <div>
            <img class="order" src="Assets/order.PNG" />
            <br />
            <br />
            <br />

        </div>

        <br />
        <br />

        <hr />
        <br />
        
        <div style="color: #FFFFFF">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Value="0" Color="White">Hot</asp:ListItem>
            <asp:ListItem Value="0">Ice (R)</asp:ListItem>
            <asp:ListItem Value="2">Ice(L) (+RM 2)</asp:ListItem>
        </asp:RadioButtonList>
            <hr />
        </div>
        
        <asp:Label ID="syrup" runat="server" Text="Add syrup" Font-Bold="True" ForeColor="White"></asp:Label>
        
        <br />

        <div style="color: #FFFFFF">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
            <asp:ListItem Value="0">Normal Syrup</asp:ListItem>
            <asp:ListItem Value="2">Hazelnut Syrup (+RM2)</asp:ListItem>
            <asp:ListItem Value="2">Caramel Syrup (+RM 2)</asp:ListItem>
            <asp:ListItem Value="2">Rose Syrup (+RM 2)</asp:ListItem>
            <asp:ListItem Value=" 2">Rose Syrup (+RM 2)</asp:ListItem>
            <asp:ListItem Value="2">Vanilla Syrup (+RM 2)</asp:ListItem>
        </asp:CheckBoxList>
            <hr />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Add drizzle"></asp:Label>
            <br />
            <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                <asp:ListItem Value="3">Chocolate drizzle (+RM 3)</asp:ListItem>
                <asp:ListItem Value="3">Caramel Drizzle (+RM 3)</asp:ListItem>
                <asp:ListItem Value="3">Strawberry Drizzle (+RM 3)</asp:ListItem>
            </asp:CheckBoxList>
            <hr />
            <br />
        </div>

        <div>
            <asp:Button ID="backMenu" runat="server" Text="Add to cart" OnClick="btnBackMenu_Click" BackColor="#FF9933" BorderColor="#FF9933" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>