<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web_App_Project.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="main.css"/>
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <!--CSS Grid For Homepage-->
    <table style="width:1vh;">
        <tr style="width:1100px;height:50px">
            <td style="width:60px;text-align:center; padding:80px; background:#1077de;">
                <!--Inserting Logo-->
                <img src="Assets/drinkables-logo.png" alt="Drinkables logo" style="margin:auto"/>
            </td>
        </tr>
        <tr>
            <td style="width:1vh; text-align:center; background:#ffffff">
                <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" style="color:ghostwhite; border-radius: 8px; background-color:#1077de; margin: 40px 40px 40px; height:40px; width:60px;"/>
                <asp:Button ID="BtnOrder" runat="server" Text="Order" OnClick="BtnLogin_Click" style="border-radius: 8px; color:ghostwhite; background-color:#1077de; margin: 40px 40px 40px; height:40px; width:60px;"/>
            </td>
        </tr>
        <tr style="width:1vh;height:40px">
            <td colspan="3"></td>
        </tr>
        <tr style="width:1vh">
            <td colspan="3">           
            </td>
        </tr>
        <tr style="width:1vh;height=30px;">
            <td colspan="3">

            </td>
        </tr>
    </table>
        l
        <div class="navbar">
            <a href="Home.aspx">
            <a href="Menu.aspx"> Menu</a> 
            <a href="Rewards.aspx"> Rewards </a>
            <a href="Account.aspx"> Account </a>
        </div>
    </form>
</body>
</html>


