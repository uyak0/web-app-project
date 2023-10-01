<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Web_App_Project.Cart" %>

<asp:Content ID="Content4" ContentPlaceHolderID="title" runat="server">
    Cart
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="main.css"/>
    <title>Cart</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <table>
                <tr style="border-style:solid">
                    <td style="font-size: 140%; background-color: white;">Order Cart</td>
                    <td style="font-size: 100%">&nbsp;</td>
                </tr>
                <tr>
                    <td style="background:white; color: black; font-style:italic; padding: 10px">
                        <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Cart] WHERE [CartId] = @CartId" InsertCommand="INSERT INTO [Cart] ([CartId], [Price]) VALUES (@CartId, @Price)" SelectCommand="SELECT * FROM [Cart]" UpdateCommand="UPDATE [Cart] SET [Price] = @Price WHERE [CartId] = @CartId" ID="ctl24">
                            <DeleteParameters>
                                <asp:Parameter Name="CartId" Type="String"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="CartId" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Price" Type="Decimal"></asp:Parameter>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Price" Type="Decimal"></asp:Parameter>
                                <asp:Parameter Name="CartId" Type="String"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        
                        <asp:GridView runat="server" ID="ctlCart" AllowSorting="True" DataSourceID="ctl24"></asp:GridView>

                    </td>
                    
                </tr>
                
                    
            </table>
            <asp:Button runat="server" onclick="btnSubmitAll_Click" Text="Submit"></asp:Button>
        </div>
        <div class="navbar">
            <a href="Home.aspx"> Home </a> 
            <a href="Menu.aspx"> Menu </a> 
            <a href="Rewards.aspx"> Rewards </a>
            <a href="Account.aspx"> Account </a>
        </div>
</asp:Content>