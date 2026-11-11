<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <style>
        #head {
            background-color: red;
            padding: 2px;
            text-align: center;
            font-weight: bold;
            color: white;
            text-decoration: underline;
        }

        .auto-style6 {
            width: 22%;
            margin-top: 10px;
        }

        .auto-style7 {
            height: 26px;
            margin-top: 10px;
        }

        .auto-style8 {
            height: 29px;
        }

        #submit, #reset {
            background-color: aqua;
            margin-left: 4px;
            padding: 3px;
        }
    </style>
</head>
<body style="margin-left: 0px">
    <form id="form1" runat="server" align="center">
        <div id="head">
            <h1>Login Form</h1>
        </div>

        <table align="center" class="auto-style6">
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Email</td>
                <td class="auto-style8">
                    <asp:TextBox ID="email" TextMode="Email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mobile</td>
                <td>
                    <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td class="auto-style7" colspan="2">
                    <asp:Button ID="submit" runat="server" Text="Submit" style="margin-left: 0px" Width="107px" />
                    <asp:Button ID="reset" runat="server" Text="Reset" Width="109px" />
                </td>
            </tr>
        </table>
        <asp:Label ForeColor="Red"  ID="Label1" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>