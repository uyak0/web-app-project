<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="AccountPage.aspx.cs" Inherits="Web_App_Project.Account.AccountPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Account
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Account.css" rel="stylesheet" />
    <link href="AccountPage.css" rel="stylesheet" />
    <link href="AnonymousView.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid">
        <div class="info">
            <asp:LoginView ID="LoginView1" runat="server">
                <%-- Anonymous View --%>
                <AnonymousTemplate>
                    <div class="anonymous">
                        <a href="SignUp.aspx"> Sign Up </a>
                        or 
                        <a href="Login.aspx"> Login </a> 
                        now to enjoy members benefits!
                    </div>
                </AnonymousTemplate>

                <%-- Logged In View --%>
                <LoggedInTemplate>
                    <div class="profile-container">
                        <div class="profile-icon-wrapper">
                            <img id="profile-icon" src="../Assets/favicon-light.png" />
                        </div>
                        <div class="data">
                            <h1><asp:LoginName ID="LoginName1" runat="server" /></h1>
                            <h3><%=GetEmail()%></h3>
                        </div>
                    </div>
                    <div class="item">
                        <a href="ChangePassword.aspx"> 
                            Change Password  
                        </a>
                        <span class="marker"></span>
                    </div>
                    <div class="item">
                        <asp:LoginStatus ID="LoginStatus1" runat="server" 
                            LogoutAction="RedirectToLoginPage" 
                            LogoutPageUrl="~/Account/Login.aspx" />
                        <span class="marker"></span>
                    </div>
                </LoggedInTemplate>
            </asp:LoginView>
        </div>
    </div>
</asp:Content>
