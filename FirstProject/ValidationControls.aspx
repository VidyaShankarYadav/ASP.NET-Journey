<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationControls.aspx.cs" Inherits="FirstProject.ValidationControls" %>
<appSettings> 
<add key="ValidationSettings:UnobtrusiveValidationMode" value="none"/> 
</appSettings>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Validation Control</h1><br />
        Name:
        <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="223px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="TextBox1" ErrorMessage="please fill yor name"  Display="Dynamic" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>

        <asp:DropDownList ID="ddl" runat="server">
            <asp:ListItem Text="-Select Items-" Value="ns"></asp:ListItem>
            <asp:ListItem Text="-Television-" Value="item1"></asp:ListItem>
            <asp:ListItem Text="-Fridge-" Value="item2"></asp:ListItem>
            <asp:ListItem Text="-Washing Machine-" Value="item3"></asp:ListItem>
            <asp:ListItem Text="-Cooler-" Value="item4"></asp:ListItem>
            <asp:ListItem Text="-Air Conditioner-" Value="item6"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="ddl" ErrorMessage="please select 1 value from list" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" InitialValue="ns"></asp:RequiredFieldValidator><br />
        <asp:Button ID="Button1" runat="server" Text="Button" Height="31px" Width="77px" />

        
    </form>
</body>
</html>
