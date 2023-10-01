<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_App_Project.Account.Login" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    Login
</asp:Content>
<asp:Content ID="scripts" ContentPlaceHolderID="head" runat="server">
    <link href="Account.css" rel="stylesheet" />
    <link href="Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid">
        <a href="../Home.aspx"><img class="logo" src="../Assets/drinkables-logo.png" /></a>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Login ID="Login1" runat="server" 
            BackColor="#666666" 
            BorderColor="#E6E2D8" 
            BorderPadding="4" 
            BorderStyle="Solid" 
            BorderWidth="1px" 
            Font-Names="Verdana" 
            Font-Size="0.8em" 
            ForeColor="#333333" 
            Height="250px" Width="350px" 
            CreateUserText="Don't have an account? Sign up now." 
            UserNameLabelText="Username: " 
            DestinationPageUrl="~/Account/AccountPage.aspx" 
            CreateUserUrl="~/Account/SignUp.aspx" PasswordRecoveryText="Forgot your password? Click here." PasswordRecoveryUrl="~/Account/PasswordRecovery.aspx">
            <%--OnLoggingIn="Login1_LoggingIn"--%>

            <InstructionTextStyle Font-Italic="True" ForeColor="Black" Font-Size="Larger" />
            <LabelStyle Font-Bold="True" CssClass="labels" />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Larger" ForeColor="#284775" CssClass="loginButton" />
            <TextBoxStyle Font-Size="Larger" Width="150px" />
            <TitleTextStyle BackColor="#666666" Font-Bold="True" Font-Size="Larger" ForeColor="White" />
        </asp:Login>
    </div>
</asp:Content>
