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
        pointsBalance = 250; // Initial points balance
        // JavaScript to handle button clicks and redemption logic
        const rewardButtons = document.querySelectorAll('.reward-button');
        const pointsBalanceSpan = document.getElementById('pointsBalance');
        const voucherCodeSpan = document.getElementById('voucherCode');
        const off30 = document.getElementById('off30');
        const off60 = document.getElementById('off60');
        const off100 = document.getElementById('off100');
        document.getElementById("pointsBalanceOutput").innerHTML = pointsBalance;
        document.getElementById("voucherCodeOutput").innerHTML = voucherCode;
        // Event listener for reward button clicks
        rewardButtons.forEach(button => {
            button.addEventListener('click', () => {
                const rewardName = button.getAttribute('data-reward-name');
                const RewardID = button.getAttribute('data-reward-id');
                const pointsRequired = parseInt(button.getAttribute('data-points-required'));

                // Function to subtract points from balance
                function subtractPoints(pointsRequired) {
                    if (pointsRequired <= currentPointsBalance) {
                        pointsbalance = pointsBalance - pointsRequired;
                        pointsBalanceSpan.textContent = pointsBalance;
                    }
                    else {
                        alert('Insufficient points for redemption.');
                    }
                }

                // Function to generate a random code
                function generateRandomCode(rewardID) {
                    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
                    const codeLength = 6;
                    let code = '';
                    for (let i = 0; i < codeLength; i++) {
                        const randomIndex = Math.floor(Math.random() * characters.length);
                        code += characters.charAt(randomIndex);
                    }

                    const voucherCode = `${rewardID}-${code}`;
                    return voucherCode;
                }
                
                // Add click event listeners to each button
                off30.addEventListener('click', function () {
                    subtractPoints(100);
                    generateRandomCode(2);
                });
                off60.addEventListener('click', function () {
                    subtractPoints(200);
                    generateRandomCode(8);
                });
                off100.addEventListener('click', function () {
                    subtractPoints(300);
                    generateRandomCode(10);
                });
            });
        });
        
    </script>

    <div class="container">
        <h2>Select a Reward</h2>
        <button id="off30" class="reward-button" data-reward-name="2" data-points-required="100">30% Off</button>
        <button id="off60" class="reward-button" data-reward-name="8" data-points-required="200">60% Off</button>
        <button id="off100" class="reward-button" data-reward-name="10" data-points-required="300">Free Drink</button>

        <div>
            <p1>Your Available Points: 
                <p id="pointsBalanceOutput"></p>
            </p1>
        </div>

        <div>
            <p1>Voucher Code: 
                <p id="voucherCodeOutput"></p>
            </p1>
        </div>
    </div>
    
</asp:Content>
