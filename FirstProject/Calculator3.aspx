<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator3.aspx.cs" Inherits="FirstProject.Calculator3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 35%;
        }
        .auto-style2 {
            width: 633px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
        <table class="auto-style1">
            <tr>
                
                <td class="auto-style2">Enter The First Number:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter The Second Number:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Result</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="192px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" class="auto-style3" >
                    <asp:Button ID="Button1" runat="server" Text="Button" CommandName="+" CommandArgument="Buttons_Command" />
                    <asp:Button ID="Button2" runat="server" Text="Button" CommandName="-" CommandArgument="Buttons_Command"/>
                    <asp:Button ID="Button3" runat="server" Text="Button" CommandName="*" CommandArgument="Buttons_Command"/>
                    <asp:Button ID="Button4" runat="server" Text="Button" CommandName="/" CommandArgument="Buttons_Command"/>
                    <asp:Button ID="Button5" runat="server" Text="Button" />
                </td>
            </tr>
        </table>
       
    </form>
</body>
</html>
