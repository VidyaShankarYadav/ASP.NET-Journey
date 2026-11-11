using System;

namespace FirstProject
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) name.Focus();
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (name.Text == "Aman" && email.Text == "amanyadav3831@gmail.com" && mobile.Text == "7985409649" && password.Text == "Aman@77") 
                Label1.Text = "Valid User";

            else
                Label1.Text = "Invalid User";
            if (!IsPostBack) name.Focus();
        }
        protected void reset_Click(object sender, EventArgs e)
        {
            name.Text = email.Text = mobile.Text =password.Text= "";
            if (!IsPostBack) name.Focus();
        }
    }
}