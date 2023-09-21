<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web_App_Project.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style script="text/css">
         *
         {
             font-family:sans-serif;
         }

         div {
             padding-bottom: 30px;
         }

         table {
             text-align: center;
             width: 100%;
         }

         .imgHover:hover {
             opacity: 0.7;
             transition: .5s ease;
         }
    </style>
    <link rel="stylesheet" href="Home.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Table Grid For Homepage-->
    <table style="width:1vh;">
        <tr style="width:1100px;height:50px">
            <td style="width:60px;text-align:center; padding:80px; background:#1077de;">
                <!--Inserting Logo-->
                <img src="Assets/drinkables-logo.png" alt="Drinkables logo" style="margin:auto"/>
            </td>
        </tr>
        <tr>
            <td style="width:1vh; text-align:center; background:#ffffff">
                <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" style="color:ghostwhite; border-radius: 8px; background-color:#1077de; margin: 40px 40px 40px; height:80px; width:100px; font-size: 20px;"/>
                <asp:Button ID="BtnOrder" runat="server" Text="Order" OnClick="BtnLogin_Click" style="border-radius: 8px; color:ghostwhite; background-color:#1077de; margin: 40px 40px 40px; height:80px; width:100px; font-size: 20px;"/>
            </td>
        </tr>
        <tr style="width:1vh;height:40px">
            <td colspan="3" style="background:#1077de; color:#ffffff; text-align: center;"> 
                <div style="padding:50px; line-height:30px;">
                    <h1 style="margin: 0 50px 50px">About Us</h1>
                    <h3>Welcome to Drinkables, where the art of beverages knows no boundaries!

At Drinkables, we've set out on a mission to prove that the world of drinks is a universal language that can connect people from all walks of life. Nestled in the heart of the city, our shop is a haven for diversity, offering an extensive range of drinks and refreshments designed to satisfy every palate and embrace every individual.

Our journey began with a simple belief: a great drink has the power to break down barriers. As you step into Drinkables, you'll discover an inviting space that celebrates shared moments and meaningful conversations just as much as the drinks themselves. From the refined tastes of the upper echelons to the authentic cravings of the honest working class, our shelves house an array of options that cater to every preference.

From the allure of premium blends to the comfort of familiar favorites, our selection showcases our commitment to quality and inclusivity. Whether you're seeking an innovative concoction that piques your curiosity or a classic sip that evokes nostalgia, our dedicated team is here to guide you through an exploration of flavors.

At Drinkables, we believe that every sip holds a story. So why not come and embark on a journey through our world of beverages? Join us in raising a glass to unity, diversity, and the shared delight of experiencing life one sip at a time.</h3>
                </div>

            </td>
        </tr>
        <tr style="width:1vh">
            <td colspan="3">           
            </td>
        </tr>
        <tr style="width:1vh;height:30px;">
            <td colspan="3">

            </td>
        </tr>
    </table>
</asp:Content>
