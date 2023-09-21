<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="Web_App_Project.Account.PasswordRecovery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Password Recovery
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Account.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid">
        <img class="logo" src="../Assets/drinkables-logo.png" />
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" Width="350px"  Height="250px"
                              BackColor="#666666" 
                              BorderColor="#E6E2D8" 
                              BorderPadding="4" 
                              BorderStyle="Solid" 
                              BorderWidth="1px" 
                              Font-Names="Verdana" 
                              Font-Size="0.8em" >
            <SubmitButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Larger" ForeColor="#284775" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <SuccessTextStyle Font-Bold="True" ForeColor="#1C5E55" />
            <TextBoxStyle Font-Size="Larger" Width="150px" />
            <TitleTextStyle BackColor="#666666" Font-Bold="True" Font-Size="Larger" ForeColor="White" />
        </asp:PasswordRecovery>
    </div>
</asp:Content>
