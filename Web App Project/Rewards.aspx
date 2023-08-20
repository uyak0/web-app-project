<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rewards.aspx.cs" Inherits="Web_App_Project.Test" %>

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
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Rewards</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
  }
  header {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px;
    display: flex;
    align-items: center;
  }
  header img {
    width: 40px;
    margin-right: 10px;
  }
  .container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background-color: white;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  }
  h1 {
    margin-top: 0;
  }
  p {
    line-height: 1.6;
  }
</style>
<link rel="stylesheet" href="main.css"/>
</head>
<body>
    <!-- Navbar -->
<div class="navbar">
    <a href="../Home.aspx"> Home </a>
    <a href="../Menu.aspx"> Menu</a>
    <a href="../Rewards.aspx"> Rewards </a>
    <a href="../Account/AccountPage.aspx"> Account </a>
</div>
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
</body>
</html>