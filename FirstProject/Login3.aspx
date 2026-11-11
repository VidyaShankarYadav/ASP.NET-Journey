<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login3.aspx.cs" Inherits="FirstProject.Login3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login 3</title>
    <style>
        #head {
            background-color: red;
            padding: 2px;
            text-align: center;
            font-weight: bold;
            color: white;
            text-decoration: underline;
        }

        #submit {
            background-color: aqua;
            margin-left: 4px;
            border-radius:4px;
            padding: 6px;
        }

        #reset {
            background-color: red;
            margin-left: 4px;
            padding: 6px;
            border-radius:4px;
        }

        .auto-style9 {
            width: 27%;
            height: 151px;
            margin-left: 507px;
        }

        .auto-style10 {
            width: 861px;
        }

        #submit, #reset:hover {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="head">
            <h1>Login Form</h1>
        </div>

        <table class="auto-style9">
            <tr>
                <td class="auto-style10">Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Email:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Password:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="success_Clicked" />
                    <asp:Button ID="reset" runat="server" OnClick="reset_clicked" Text="Reset" Width="77px" />
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
