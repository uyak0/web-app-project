<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="AccountPage.aspx.cs" Inherits="Web_App_Project.Account.AccountPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Account
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Account.css" rel="stylesheet" />
    <link href="AccountPage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid">
        <div class="info">
            <div class="profile-container">
                <div class="profile-icon-wrapper">
                    <img id="profile-icon" src="../Assets/favicon-light.png" />
                </div>
                <div class="data">
                    <h1>Bryan</h1>
                    <h4>somethingsum@gmail.com</h4>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
