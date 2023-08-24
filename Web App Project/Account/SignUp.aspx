<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Web_App_Project.Account.SignUp" %>
<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    Sign Up
</asp:Content>
<asp:Content ID="scripts" ContentPlaceHolderID="head" runat="server">
    <link href="Account.css" rel="stylesheet" />
    <link href="SignUp.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid">
        <img class="logo" src="../Assets/drinkables-logo.png" />
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
            BackColor="#666666" 
            BorderColor="#E6E2D8" 
            BorderStyle="Solid" 
            BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="0.8em" 
            Width="350px" 
            MembershipProvider="SqlMembershipProvider" 
            ContinueDestinationPageUrl="~/Account/Login.aspx" 
            CancelDestinationPageUrl="~/Account/Login.aspx" 
            FinishDestinationPageUrl="~/Account/Login.aspx">
            <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <TitleTextStyle BackColor="#666666" Font-Bold="True" Font-Size="Larger" ForeColor="White" />
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep runat="server">
                    <ContentTemplate>
                        <table style="font-family:Verdana;font-size:100%;width:350px;">
                            <tr>
                                <td align="center" colspan="2" style="color:White;background-color:#666666;font-size:Larger;font-weight:bold;">Complete</td>
                            </tr>
                            <tr>
                                <td>Your account has been successfully created.</td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="ContinueButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="Continue" Font-Names="Verdana" ForeColor="#284775" Text="Continue" ValidationGroup="CreateUserWizard1" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CompleteWizardStep>
            </WizardSteps>
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle BorderWidth="0px" />
        </asp:CreateUserWizard>
    </div>
</asp:Content>
