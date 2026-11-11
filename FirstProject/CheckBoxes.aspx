<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxes.aspx.cs" Inherits="FirstProject.CheckBoxes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Name:<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </h3>

            <h4>Gender:</h4>
            <asp:RadioButton GroupName="rb" ID="rbfemale" runat="server" Text="Female" />
            <asp:RadioButton GroupName="rb" ID="rbmale" runat="server" Text="TransGender" />
            <asp:RadioButton GroupName="rb" ID="rbtrans" runat="server" Text="Male" />


            <h4>Eating Habbit:</h4>
            <asp:RadioButton GroupName="eh" ID="rbvegan" runat="server" Text="Vegan" />
            <asp:RadioButton GroupName="eh" ID="rbveg" runat="server" Text="Vegetarian" />
            <asp:RadioButton GroupName="eh" ID="rbnonveg" runat="server" Text="Non-Vegeterian" />


            &nbsp;<h4>Hobbies:</h4>
            <asp:CheckBox ID="cbcricket" runat="server" Text="Cricket" />
            <asp:CheckBox ID="cbfootball" runat="server" Text="Football" />
            <asp:CheckBox ID="cbbook" runat="server" Text="Book" />
            <asp:CheckBox ID="cbgym" runat="server" Text="Gym" />
            <br />

            <asp:ListBox ID="ListBox1" runat="server" Width="127px">
                <asp:ListItem Value="city1">Kolkata</asp:ListItem>
                <asp:ListItem Value="city2">Mumbai</asp:ListItem>
                <asp:ListItem Value="city3">Bhopal</asp:ListItem>
                <asp:ListItem Value="city4">Varanasi</asp:ListItem>
                <asp:ListItem Value="city5">Hyderabad</asp:ListItem>
            </asp:ListBox>
            <br />


            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" Height="55px" OnClick="Button1_Click" Text="Button" Width="434px" />
        </p>
    </form>
</body>
</html>
