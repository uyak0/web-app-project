<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rewards.aspx.cs" Inherits="Web_App_Project.Rewards" %>

<!DOCTYPE html>
<script runat="server">

    protected void btnRegisterRedirect(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }

    protected void btnLoginRedirect(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
</script>


<html>
<head runat="server">
    <title><asp:ContentPlaceHolder ID="title" runat="server"></asp:ContentPlaceHolder></title> <!-- title -->
    <link rel="stylesheet" type="text/css" href="main.css"/> <!-- main css -->
    <link rel="icon" type="image/x-icon" href="Assets/favicon-dark.png" /> 
    <asp:ContentPlaceHolder ID="head" runat="server"> <!-- can add scripts/css -->
    </asp:ContentPlaceHolder>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
        }
        #form1 {
            height: 180px;
            width: 213px;
        }
        #form2 {
            height: 87px;
            width: 214px;
        }
        .auto-style2 {
            color: #FFFFFF;
            font-size: large;
        }
        #form2 {
            height: 159px;
            width: 214px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navbar -->
        <div class="navbar">
            <a href="../Home.aspx"> Home </a>
            <a href="../Menu.aspx"> Menu</a>
            <a href="../Rewards.aspx"> Rewards </a>
            <a href="../Account/AccountPage.aspx"> Account </a>
        </div>
        <!-- Content -->
        <div style="width: 818px; height: 19px; margin-left: 214px;">
            <asp:Image ID="Image2" runat="server" />
        </div>
        <div style="width: 815px; height: 163px; margin-left: 217px">
            <h1 class="auto-style1">Free Drinks, anyone?</h1>
            <p class="auto-style2">
                Signing up is so fast and easy!</p>
            <p class="auto-style2">
                <asp:Button ID="Register" runat="server" Text="Join Now" OnClick="btnRegisterRedirect"/>
                <asp:Button ID="Login" runat="server" Text="Sign In" OnClick="btnLoginRedirect"/>
            </p>
        </div>

        <!-- Navbar -->
        <div class="navbar">
            <a href="../Home.aspx"> Home </a>
            <a href="../Menu.aspx"> Menu</a>
            <a href="../Rewards.aspx"> Rewards </a>
            <a href="../Account/AccountPage.aspx"> Account </a>
        </div>
    </form>
        <div style="width: 815px; height: 102px; margin-left: 216px">
            <h1 class="auto-style1">Free Drinks, anyone?</h1>
            <p class="auto-style2">
            Earn points on every drink you order, and those points add up to Rewards!</p>
        </div>
    <p style="width: 817px; height: 40px; color: #FFFFFF; margin-left: 216px; margin-top: 0px">
    As a member you&#39;ll collect points on almost anything you buy and those points add up to (your really favourite) Rewards</p>
    <div style="width: 1033px"></div>
        <div style="width: 815px; height: 102px; margin-left: 217px">
            <h2 class="auto-style1">Earn 1 point with every RM1 spent</h2>
            <p class="auto-style2">
                Pay using a Drinkables Card or Drinkables mobile app, you will earn 1 Point for every RM1 spent!</p>
        </div>
    <div style="width: 1033px"></div>
    <div style="width: 1033px"></div>
            <div style="width: 815px; height: 102px; margin-left: 217px">
        <h1 class="auto-style1">More Drinks, More Points, More REWARDS</h1>
                <h1 style="color: #FFFFFF">More to come soon!</h1>
        <p class="auto-style2">
            Get a complimentary free drink on your birthday month!</p>
    </div>
<p style="width: 817px; height: 40px; color: #FFFFFF; margin-left: 216px; margin-top: 0px">
    &nbsp;</p>
    
        </body>
</html>