<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Web_App_Project.Account.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Change Password
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Account.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid">
        <img class="logo" src="../Assets/drinkables-logo.png" />
        <asp:ChangePassword ID="ChangePassword1" runat="server" 
            Width="350px"  Height="250px"
            BackColor="#666666" 
            BorderColor="#E6E2D8" 
            BorderPadding="4" 
            BorderStyle="Solid" 
            BorderWidth="1px" 
            Font-Names="Verdana" 
            Font-Size="0.8em" 
            CancelDestinationPageUrl="~/Account/AccountPage.aspx" 
            ContinueDestinationPageUrl="~/Account/Login.aspx">
            <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Larger" ForeColor="#284775" />
            <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Larger" ForeColor="#284775" />
            <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Larger" ForeColor="#284775" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" Font-Size="Larger"/>
            <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
            <TextBoxStyle Font-Size="Larger" Width="150px"/>
            <TitleTextStyle BackColor="#666666" Font-Bold="True" Font-Size="Larger" ForeColor="White" />
        </asp:ChangePassword>
    </div>
    
</asp:Content>
