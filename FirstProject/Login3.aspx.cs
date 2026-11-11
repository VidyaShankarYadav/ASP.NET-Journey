using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace FirstProject
{
    public partial class Login3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                TextBox1.Focus();
        }

        protected void success_Clicked(object sender, EventArgs e)
        {
            if (TextBox1.Text == "Aman" && TextBox2.Text == "amanyadav3831@gmail.com" && TextBox3.Text == "Vsy@123")
                Server.Transfer("Success3.aspx");
            else
                Response.Redirect("Failure3.aspx ?Name=" + TextBox1.Text);
        }

        protected void reset_clicked(object sender, EventArgs e)
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
            TextBox1.Focus();
        }
    }
}