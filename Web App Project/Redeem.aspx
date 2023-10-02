<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Rewards.aspx.cs" Inherits="Web_App_Project.Redeem" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Reward Redemption
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Redeem.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <a href="../Home.aspx"><img class="logo" src="../Assets/drinkables-logo.png" style="margin:auto; height: 102px; display: block;"/></a> 
        <h1>Rewards</h1>
    </header>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const pointsBalanceSpan = document.getElementById('pointsBalance');
            const voucherCodeSpan = document.getElementById('voucherCode');

            let pointsBalance = 250;

            function updatePointsDisplay() {
                pointsBalanceSpan.textContent = pointsBalance;
            }

            function generateRandomCode() {
                const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
                const codeLength = 6;
                let code = '';
                for (let i = 0; i < codeLength; i++) {
                    const randomIndex = Math.floor(Math.random() * characters.length);
                    code += characters.charAt(randomIndex);
                }
                return code;
            }

            function redeemDiscount(discountPercentage) {
                if (pointsBalance >= 100) {
                    const discountAmount = Math.round((discountPercentage / 100) * 100);
                    pointsBalance -= 100;

                    // Generate a voucher code based on the discount
                    const voucherCode = 'DISCOUNT' + discountAmount + generateRandomCode();
                    voucherCodeSpan.textContent = voucherCode;

                    updatePointsDisplay();
                } else {
                    alert('Insufficient points for redemption.');
                }
            }

            document.getElementById('discount30').addEventListener('click', function (e) {
                e.preventDefault(); // Prevent the button's default form submission behavior
                redeemDiscount(30);
            });

            document.getElementById('discount60').addEventListener('click', function (e) {
                e.preventDefault(); // Prevent the button's default form submission behavior
                if (pointsBalance >= 200) {
                    pointsBalance -= 200;
                    voucherCodeSpan.textContent = 'FREEDRINK' + generateRandomCode();
                    updatePointsDisplay();
                } else {
                    alert('Insufficient points for redemption.');
                }
            });

            document.getElementById('freeDrink').addEventListener('click', function (e) {
                e.preventDefault(); // Prevent the button's default form submission behavior
                if (pointsBalance >= 300) {
                    pointsBalance -= 300;
                    voucherCodeSpan.textContent = 'FREEDRINK' + generateRandomCode();
                    updatePointsDisplay();
                } else {
                    alert('Insufficient points for redemption.');
                }
            });
            updatePointsDisplay();
        });
    </script>

    <div class="container">
        <h2>Select a Reward</h2>
        <button id="discount30" class="reward-button"">30% Off</button>
        <button id="discount60" class="reward-button">60% Off</button>
        <button id="freeDrink" class="reward-button">Free Drink</button>

        <div>
            <p1>Your Available Points: 
                <p id="pointsBalance">780</p>
            </p1>
        </div>

        <div>
            <p>Voucher Code: </p>
                <p id="voucherCode">N/A</p>
        </div>
    </div>
    
</asp:Content>
