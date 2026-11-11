<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator2.aspx.cs" Inherits="FirstProject.Calculator2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 37%;
            height: 134px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            width: 228px;
        }
        .auto-style3 {
            height: 77px;
        }
        h1{
            background-color:red;
            text-align:center;
            padding:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>calculator</h1>
       
        <table colspan="2" align="center" class="auto-style1">
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
         <asp:TextBox ID="TextBoxResult" runat="server" ReadOnly="true"></asp:TextBox></td>
 </tr>
            
           <tr>
    <td colspan="2" align="center" class="auto-style3">
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="ButtonClicked" Width="81px" />
        <asp:Button ID="btnSub" runat="server" Text="Substract" OnClick="ButtonClicked" style="margin-left: 0px" Width="104px" />
        <asp:Button ID="btnMul" runat="server" Text="Multiply" OnClick="ButtonClicked" Width="101px" />
        <asp:Button ID="btnDiv" runat="server" Text="Division" OnClick="ButtonClicked" Width="102px" />
        <asp:Button ID="btnReset" runat="server" Text="Reset"  Width="80px" OnClick="ResetButtonClicked" />
    </td>
</tr>
        </table>
       
    </form>
</body>
</html>
