<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationControl4.aspx.cs" Inherits="FirstProject.ValidationControl4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function PhoneOrEmail(source, args) {
            var phone = document.getElementById('<%= txtNumber.ClientID %>').value.trim();
            var email = document.getElementById('<%= txtEmail.ClientID %>').value.trim();
            args.IsValid = (phone.length > 0 || email.length > 0);
        }
        function CommentValidation(source, args) {
            args.IsValid = (args.Value.trim().length >= 50);
        }
</script>
    <style>
        #Button1:hover{
            cursor:pointer;
        }
    </style>
</head>
<body>
    <h1 style="background-color:pink; padding:5px; color:black; font-weight:bolder;text-align:center" >Validation Control</h1>
    <form id="form1" runat="server">

        <table align="center">
            <tr>
                <td>Company Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name Field Can't be empty." ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>contact Number:</td>
                <td>
                    <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                </td>
                <td rowspan="2">
                    <asp:RegularExpressionValidator ID="revNumber" runat="server" ControlToValidate="txtNumber" Display="Dynamic" ErrorMessage="Please enter a valid Mobile Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\d{8}$|^[6-9]\d{9}$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Either Email or Phone must be provided" ForeColor="Red" SetFocusOnError="True" ClientValidationFunction="PhoneOrEmail" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" Display="Dynamic" ErrorMessage="Please enter a valid email address" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Email Id</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Comments</td>
                <td>
                    <asp:TextBox ID="txtComment" runat="server" Height="74px" TextMode="MultiLine" Width="160px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvComment" runat="server" Display="Dynamic" ErrorMessage="This Field Can't be empty" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtComment"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CustomValidator ID="CustomValidator2" runat="server" Display="Dynamic" ErrorMessage="Comment message should be more tha 50 character." ForeColor="Red" SetFocusOnError="True" ClientValidationFunction="CommentValidation" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" style="margin-left: 0px" Width="170px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

    </form>
</body>
</html>
