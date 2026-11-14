using System;

using System.Web.UI.WebControls;

namespace FirstProject
{
    public partial class ValidationControl4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                txtName.Focus();
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtNumber.Text.Trim().Length == 0 || txtEmail.Text.Trim().Length == 0)
                args.IsValid = false;
            else
                args.IsValid = true;
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtComment.Text.Trim().Length < 50)
                args.IsValid = false;
            else
                args.IsValid = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
                Label1.Text = " successfull";
            else
                Label1.Text = "failed";
        }
    }
}