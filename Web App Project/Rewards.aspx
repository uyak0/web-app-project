<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Rewards.aspx.cs" Inherits="Web_App_Project.Rewards1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Rewards
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Rewards.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
  <img src="header_image1.jpg" alt="Header Image 1">
  <h1>Drinkables Rewards</h1>
</header>
<div class="container">
  <header>
      <br />
      <br />
      <br />
    <img src="header_image2.jpg" alt="Header Image 2">
    <h2>Free Drinks, Anyone?</h2>
  </header>
  <p>Earn points with every purchase and unlock exciting rewards with Drinkables!</p>
    <p class="auto-style2">
  Signing up is so fast and easy!&nbsp;&nbsp;&nbsp; &gt;&gt;&gt;&gt;&gt;<asp:Button ID="Register" runat="server" Text="Join Now" OnClick="btnRegisterRedirect"/>
  <asp:Button ID="Login" runat="server" Text="Sign In" OnClick="btnLoginRedirect"/>
        &lt;&lt;&lt;&lt;&lt;</p>
  
  <header>
    <img src="header_image3.jpg" alt="Header Image 3">
    <h2>How It Works</h2>
  </header>
  <ul>
    <li>Sign up for our Membership.</li>
    <li>Make purchases and earn points for each transaction.</li>
    <li>Redeem your points for discounts, free drinks, and more!</li>
  </ul>
  
  <header>
    <img src="header_image4.jpg" alt="Header Image 4">
    <h2>Benefits</h2>
  </header>
  <ul>
    <li>10 points for every $1 spent.</li>
    <li>Exclusive access to new flavors and promotions.</li>
    <li>Birthday rewards and special offers.</li>
  </ul>
  
  <header>
    <img src="header_image5.jpg" alt="Header Image 5">
    <h2>Redeem Rewards</h2>
  </header>
  <p>Log in to your account to view your points balance and redeem rewards.</p>
  
  <header>
    <img src="header_image6.jpg" alt="Header Image 6">
    <h2>Contact Us</h2>
  </header>
  <p>If you have any questions about our rewards program, feel free to <a href="mailto:info@drinkables.com">contact us</a>.</p>
</div>
</asp:Content>
