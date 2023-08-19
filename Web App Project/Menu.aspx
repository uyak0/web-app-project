<<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Web_App_Project.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="main.css"/>
    <title>Menu</title>
</head>
<body>

    <div class="Order">
        
        <div class="selfPickUp"> 
            <a href="Order.aspx">Self pick ups</a>
        </div>

        <div class="selfPickUp"> 
            <a href="Order.aspx">Delivery</a>
        </div>

    </div>

    <form id="form1" runat="server">
        <div class="navbar">
            <a href="Home.aspx"> Home </a>
            <a href="Menu.aspx"> Menu</a> 
            <a href="Rewards.aspx"> Rewards </a>
            <a href="Account.aspx"> Account </a>
        </div>
    </form>
</body>
</html>