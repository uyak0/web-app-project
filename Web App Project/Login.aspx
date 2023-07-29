<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_App_Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PineEats Ordering</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome to PineEats<br/><br />

            <table>
                <tr>
                    <th> Table No. :</th>
                    <th> 
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </th>
                </tr>
                <tr class="empty">
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="startOrder" runat="server" OnClick="Button1_Click" Text="Start Ordering" Width="124px" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
