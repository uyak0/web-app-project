<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_App_Project.WebForm1" %>

<!DOCTYPE html>

<?xml version="1.0" standalone="no"?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="main.css"/>
    <title>Drinkables Ordering</title>
</head>
<body class="grid">
    <img class="logo" src="Assets/drinkables-logo.png" /> 

    <form id="form1" runat="server">
        <div class="main">
            <table>
                <tr>
                    <td class="first-column"><label><b>Table No: </b></label></td>
                    <td><asp:TextBox ID="tableNo" runat="server" OnTextChanged="tableNo_TextChanged"></asp:TextBox></td>
                </tr>
                <tr class="orderBtn">
                    <td class="first-column"></td>
                    <td><asp:Button ID="startOrder" runat="server" OnClick="startOrderBtn" Text="Start Ordering" Width="120px" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

<style>
    .logo {
        width: 500px;
    }

    .grid {
        margin: 0px 0px 0px 0px;
        display: grid;
        place-items: center;
        min-height: 100%;
        min-height: 100%;
        background-image: linear-gradient(to bottom, rgba(20, 20, 40, 0.6), rgba(25, 30, 50, 0.5)), 
                          url("Assets/somerandomcocktail.png") ;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;

    }

    .main {
        margin: -20em 0px 0px 0px;
        background-color: rgba(240, 248, 255, 0.5);
        padding: 0px 15px 15px 15px;
        border: 1px solid rgba(240, 248, 255, 0);
        border-radius: 15px;
        height: auto;
    }

    .orderBtn {
        height: 50px;
        text-align: right;
    }
    
    table {
        margin: 15px auto -10px auto;
    }

    .first-column {
        width: 5em;
    }
</style>
