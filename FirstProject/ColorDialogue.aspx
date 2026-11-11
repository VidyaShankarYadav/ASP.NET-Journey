<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ColorDialogue.aspx.cs" Inherits="FirstProject.ColorDialogue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #div1{
            background-color: antiquewhite;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div id="div1" runat="server"> <br />
          
           <asp:TextBox ID="TextBox1" TextMode="Color" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox><br/> <br />
       </div>
    </form>
</body>
</html>
