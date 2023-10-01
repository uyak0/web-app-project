<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Rewards.aspx.cs" Inherits="Web_App_Project.Rewards1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Rewards
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Rewards.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <a href="../Home.aspx"><img class="logo" src="../Assets/drinkables-logo.png" style="margin:auto; height: 102px; display: block;"/></a> 
        <h1>Rewards</h1>
    </header>
    <div class="container">
        <!-- Section: Introduction -->
        <section>
            <h2>Free Drinks, Anyone?</h2>
            <p>Earn points with every purchase and unlock exciting rewards with Drinkables!</p>
            <p class="auto-style2">Signing up is fast and easy!</p>
            <p>
                <asp:Button ID="Register" runat="server" Text="Join Now" OnClick="BtnRegisterRedirect" EnableViewState="False" />
                <asp:Button ID="Login" runat="server" Text="Sign In" OnClick="BtnLoginRedirect" />
            </p>
        </section>

        <!-- Section: How It Works -->
        <section>
            <h2>How It Works</h2>
            <ul>
                <li>Sign up for our Membership.</li>
                <li>Make purchases and earn points for each transaction.</li>
                <li>Redeem your points for discounts, free drinks, and more!</li>
            </ul>
        </section>

        <!-- Section: Benefits -->
        <section>
            <h2>Benefits</h2>
            <ul>
                <li>1 point for every $1 spent.</li>
                <li>Exclusive access to new flavors and promotions.</li>
                <li>Birthday rewards and special offers.</li>
            </ul>
        </section>

        <!-- Section: Redeem Rewards -->
        <section>
            <h2>Redeem Rewards</h2>
            <p>Log in to your account to view your points balance and redeem rewards.</p>
            <p>
                <asp:Button ID="Redeem" runat="server" Text="Redeem Here" OnClick="BtnRedeemRedirect" />
            </p>
        </section>

        <!-- Section: Contact Us -->
        <section>
            <h2>Contact Us</h2>
            <p>If you have any questions about our rewards program, feel free to <a href="mailto:info@drinkables.com">contact us</a>.</p>
        </section>
    </div>
</asp:Content>