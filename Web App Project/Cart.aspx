<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Web_App_Project.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="main.css"/>
    <title>Cart</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div>
                <table>
                    <tr style="border-style:solid">
                        <td style="font-size: 140%; background-color: white;">Order Cart</td>
                        <td style="font-size: 100%">&nbsp;</td>
                    </tr>
                    <asp:DataList runat="server" ID="DataList2" DataSourceID="SqlDataSource1" RepeatLayout="Flow" RepeatDirection="Horizontal"></asp:DataList><asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
                    
                    <tr>
                        <td>                            

<%--                            <EmptyDataTemplate>
                                <div align="center" style="padding: 50px;background-color: cornflowerblue; font-size: 140%;">
                                    Your Cart is Empty. <a href="Menu.aspx">Start Ordering!</a>
                                </div>
                            </EmptyDataTemplate>--%>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="navbar">
                <a href="Home.aspx"> Home </a> 
                <a href="Menu.aspx"> Menu </a> 
                <a href="Rewards.aspx"> Rewards </a>
                <a href="Account.aspx"> Account </a>
            </div>
        </asp:Content>
    </form>
</body>
</html>
