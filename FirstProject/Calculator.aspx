<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="FirstProject.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="background-color: antiquewhite; color: red; text-align: center; padding: 10px; text-decoration: underline">Calculator
        </h1>

        <table>
            <tr>
                <td>Enter the First number:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Enter the Second number:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Result:</td>
                <td>
                    <asp:TextBox ID="TextBoxResult" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Button_Clicked" />
                    <asp:Button ID="btnSub" runat="server" Text="Substract" OnClick="Button_Clicked" />
                    <asp:Button ID="btnMul" runat="server" Text="Multuply" OnClick="Button_Clicked" />
                    <asp:Button ID="btnDiv" runat="server" Text="Division" OnClick="Button_Clicked" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
