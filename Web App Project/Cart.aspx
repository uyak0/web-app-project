<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Web_App_Project.Cart1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Cart
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="cartTable" style="width: 80%; margin-left: auto; margin-right: auto;">
    <tr style="width:1vh; height: 50px; font-size:large; text-align: center; color: #ffffff; background:#1A1110;">
        <th colspan="5">
            <h1>Your Cart</h1>
        </th>
    </tr>
    <tr style="text-align:center;">
        <td style="width:40%; font-family: 'Bricolage Grotesque', sans-serif; font-weight:bold;">Description</td>
        <td style="width:10%; font-family: 'Bricolage Grotesque', sans-serif; font-weight:bold;">Size</td>
        <td style="width:20%; font-family: 'Bricolage Grotesque', sans-serif; font-weight:bold;">Quantity</td>
        <td style="width:10%; font-family: 'Bricolage Grotesque', sans-serif; font-weight:bold;">Price</td>
        <td style="width:10%; font-family: 'Bricolage Grotesque', sans-serif; font-weight:bold;">Remove</td>
    </tr>
    <tr style="text-align:center; height: 50px;">
        <td>Green Tea</td>
        <td>Regular</td>
        <td>1</td>
        <td>RM 6.00</td>
        <td>
            <asp:RadioButton ID="Delete" runat="server"/></td>
    </tr>
    <tr style="text-align:center; font-weight:bold;">
        <td>Subtotal</td>
        <td colspan="2"></td>
        <td colspan="2">RM 6.00</td>
    </tr>
    <tr style="text-align:center; font-weight:bold;">
        <td>Tax Amount (6%)</td>
        <td colspan="2"></td>
        <td colspan="2">RM 0.36</td>
    </tr>
    <tr style="text-align:center; font-weight:bold;">
        <td>Total (Roundoff)</td>
        <td colspan="2"></td>
        <td colspan="2">RM 6.35</td>
    </tr>
</table>
</asp:Content>
