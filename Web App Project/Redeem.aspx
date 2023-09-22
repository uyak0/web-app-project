<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Rewards.aspx.cs" Inherits="Web_App_Project.Rewards1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Reward Redemption
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Add your custom styles here */
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

.reward-button {
    background-color: #333;
    color: white;
    padding: 10px 20px;
    margin: 10px;
    border: none;
    cursor: pointer;
}

    .reward-button:hover {
        background-color: #555;
    }

form {
    margin-top: 20px;
}

label {
    font-weight: bold;
}

input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
}

button {
    background-color: #333;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
}

    button:hover {
        background-color: #555;
    }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
    <img src="Assets/drinkables-logo.png" alt="Drinkables logo" style="margin:auto; height: 102px; display: block;" />
<h1 style="display: block;">Rewards</h1>
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
