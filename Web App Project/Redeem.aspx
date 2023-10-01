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
    <div class="container">
        <h2>Select a Reward</h2>
        <button class="reward-button" data-reward-name="2" data-points-required="100">30% Off</button>
        <button class="reward-button" data-reward-name="8" data-points-required="200">60% Off</button>
        <button class="reward-button" data-reward-name="10" data-points-required="300">Free Drink</button>

        <div>
            <p>Your Available Points: <span id="pointsBalance">152</span></p>
        </div>

        <div>
            <p>Voucher Code: <span id="voucherCode"></span></p>
        </div>
    </div>
    <script>
        const pointsBalance = 

        // JavaScript to handle button clicks and redemption logic
        const rewardButtons = document.querySelectorAll('.reward-button');
        const pointsBalanceSpan = document.getElementById('pointsBalance');
        const voucherCodeSpan = document.getElementById('voucherCode');

        // Event listener for reward button clicks
        rewardButtons.forEach(button => {
            button.addEventListener('click', () => {
                const rewardName = button.getAttribute('data-reward-name');
                const RewardID = button.getAttribute('data-reward-id');
                const pointsRequired = parseInt(button.getAttribute('data-points-required'));
                const currentPointsBalance = parseInt(pointsBalanceSpan.textContent);

                if (pointsRequired <= currentPointsBalance) {
                    // Deduct points and generate a voucher code
                    const newPointsBalance = currentPointsBalance - pointsRequired;
                    pointsBalanceSpan.textContent = newPointsBalance;

                    // Generate a voucher code based on reward prefix (e.g., 2 + random code)
                    const voucherCode = RewardID + generateRandomCode();
                    voucherCodeSpan.textContent = voucherCode;
                } else {
                    alert('Insufficient points for redemption.');
                }
            });
        });

        // Function to generate a sample random code
        function generateRandomCode() {
            // This is a simple example; generate a unique code as needed
            const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
            const codeLength = 6; // Adjust the length as needed
            let code = '';
            for (let i = 0; i < codeLength; i++) {
                const randomIndex = Math.floor(Math.random() * characters.length);
                code += characters.charAt(randomIndex);
            }
            return code;
        }
    </script>
</asp:Content>
