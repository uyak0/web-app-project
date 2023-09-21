<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Web_App_Project.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Cart.css" rel="stylesheet" />
    <link rel="stylesheet" href="main.css"/>
    <title>Cart</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <style type="text/css">
                * {
                    font-family: sans-serif;
                }

                .shoppingCart {
                    width: 90%;
                    margin-left: 10%;
                    text-align: center;
                }

                .subtotalDisplay {
                    width: 60%;
                    margin-left: 20%;
                    margin-right: 20%;
                    text-align: center;
                }

                .CartGrid {
                    width: 100%;
                    border: solid 2px black;
                    border-collapse: separate;
                    border-spacing: 2px;
                    min-width: 80%;
                    text-align: center;
                }

                .header {
                    background-color: #646464;
                    color: White;
                    border: none;
                    height: 25px;
                    text-align: center;
                    font-size: 100%;
                }

                .rows {
                    background-color: #fff;
                    font-family: Arial;
                    font-size: 120%;
                    color: #000;
                    min-height: 25px;
                    text-align: center;
                    border: none 0px transparent;
                }

                    .rows:hover {
                        background-color: #e28743;
                        font-family: Arial;
                        color: #fff;
                        text-align: center;
                    }
            </style>
            <div cssclass="ShoppingCart">
                <table class="shoppingCart">
                    <tr>
                        <td style="font-size: 140%">Shopping Cart</td>
                        <td style="font-size: 100%">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" CssClass="CartGrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowHeaderWhenEmpty="True" DataKeyNames="productID">
                                <Columns>
                                    <asp:TemplateField HeaderText="ID" SortExpression="productID">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("productID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:ImageField HeaderText="Product Image" DataImageUrlField="productImage1" ControlStyle-Width="60%" ReadOnly="true"></asp:ImageField>
                                    <asp:BoundField DataField="productName" HeaderText="Item" SortExpression="productName" ReadOnly="True" />
                                    <asp:BoundField DataField="productSize" HeaderText="Size" SortExpression="productSize" ReadOnly="True" />

                                    <asp:BoundField DataField="productPrice" HeaderText="Price" ReadOnly="True" SortExpression="productPrice" />
                                    <asp:TemplateField HeaderText="Quantity" SortExpression="quantity">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" ReadOnly="True" SortExpression="Subtotal" />
                                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="Test" HeaderText="Test" SortExpression="Test" Visible="False" />
                                </Columns>
                                <EmptyDataTemplate>
                                    <div align="center">
                                        There is nothing in your cart yet. <a href="/Keju/KejuHome.aspx">Start Shopping!</a>
                                    </div>
                                </EmptyDataTemplate>

                                <HeaderStyle CssClass="header"></HeaderStyle>

                                <RowStyle CssClass="rows"></RowStyle>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM CartItem WHERE (CartItem.productID = @productID)" InsertCommand="INSERT INTO [CartItem] ([cartID], [productID], [quantity], [price]) VALUES (@cartID, @productID, @quantity, @price)" SelectCommand="SELECT CartItem.productID, P.productImage1, P.productName, P.productSize, P.productPrice, CartItem.quantity, P.productPrice * CartItem.quantity AS Subtotal, CartItem.cartID AS Test FROM CartItem INNER JOIN Product AS P ON CartItem.productID = P.productID AND CartItem.cartID = (SELECT cartID FROM ShoppingCart WHERE (username = @username))" UpdateCommand="UPDATE CartItem SET quantity = @quantity WHERE (CartItem.productID = @productID)">
                                <DeleteParameters>
                                    <asp:Parameter Name="productID" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="cartID" Type="String" />
                                    <asp:Parameter Name="productID" Type="String" />
                                    <asp:Parameter Name="quantity" Type="Int32" />
                                    <asp:Parameter Name="price" Type="Double" />
                                    <asp:Parameter Name="productImage1" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:SessionParameter Name="username" SessionField="username" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="quantity" Type="Int32" />
                                    <asp:Parameter Name="productID" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:Button ID="confirmButton" runat="server" OnClick="confirmButton_Click" Text="Confirm" Height="68px" Width="253px" />
                            <br />
                            <br />
                        </td>
                        <td>
                            <table class="subtotalDisplay" style="padding-left: 10px; padding-right: 10px; border-collapse: collapse; border-spacing: 2px;">
                                <tr>
                                    <td colspan="2" class="auto-style11" style="font-size: 150%; font-weight: bolder; font-style: normal; line-height: normal; text-align: left; background-color: #000000; padding: 10px; color: #FFFFFF;">Order Summary</td>
                                </tr>
                                <tr>
                                    <td class="auto-style14" style="font-size: 150%">Subtotal</td>
                                    <td class="auto-style5">
                                        <asp:Label ID="subtotalDisplay" runat="server" EnableTheming="True">0.00</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1" colspan="2">
                                        <asp:Button ID="checkout" runat="server" Text="Checkout" Height="63px" Width="335px" OnClick="checkout_Click" Visible="False" />
                                        <br />
                                    </td>
                                </tr>
                            </table>
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
