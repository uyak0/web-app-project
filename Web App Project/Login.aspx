<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_App_Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PineEats Ordering</title>
</head>
<body class="grid">
    <form id="form1" runat="server">
        <div class="main">
            <center><h1>Welcome to PineDrinks</h1></center>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1"><label><b>Table No: </b></label></td>
                    <td><asp:TextBox ID="tableNo" runat="server" OnTextChanged="tableNo_TextChanged"></asp:TextBox></td>
                </tr>
                <tr class="empty"><td></td></tr>
                <tr class="orderBtn">
                   <td class="auto-style1"></td>
                   <td><asp:Button ID="startOrder" runat="server" OnClick="Button1_Click" Text="Start Ordering" Width="120px" /></td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>

<style>
    html {
        margin: 0px;
        width: 100%;
        height: 100%;
        background-color: #1A1110;
        color: #1A1110;
        font-family: 'Century Gothic' ;
    }

    .grid {
        display: grid;
        place-items: center;
        min-height: 100%;
    }

    .main {
        background-color: aliceblue;
        padding: 0px 15px 15px 15px;
        border: solid aliceblue;
        border-radius: 15px;
        height: 139px;
    }

    .orderBtn {
        text-align: right;
    }
    
    table {
        margin-left: auto;
        margin-right: auto;
    }
    .auto-style1 {
        width: 49%;
    }
    .auto-style2 {
        width: 350px;
    }
</style>
