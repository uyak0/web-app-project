<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Web_App_Project.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="main.css"/>
    <title>Menu</title>
</head>
<body>
     
   
      
   

    <form id="form1" runat="server">

        
        <div class="navbar">
            <a href="Home.aspx"> Home </a>
            <a href="Menu.aspx"> Menu</a> 
            <a href="Rewards.aspx"> Rewards </a>
            <a href="Account.aspx"> Account </a>
        </div>

        <div class="button-container">
            <asp:Button ID="btnSelfPickUp" runat="server" Text="Self Pick Up" OnClick="btnSelfPickUp_Click" />
            <asp:Button ID="btnDelivery" runat="server" Text="Delivery" OnClick="btnDelivery_Click" />
        </div>

         <div class="input-container">
        </div>
        <p>
            Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 16px" Width="273px"></asp:TextBox>
        </p>
        <p>
            Pick Up date and time
            <asp:Calendar ID="Calendar1" runat="server" Height="199px" Width="334px"></asp:Calendar>
        </p>
        <p>
            Address: <asp:TextBox ID="TextBox2" runat="server" Width="379px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="btnStartOrdering" runat="server" Text="Start Ordering" OnClick="btnStartOrdering_Click" Height="32px" style="margin-left: 3px" Width="158px" />
        </p>
    </form>
</body>
</html>
