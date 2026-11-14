using System;

namespace FirstProject
{
    public partial class ValidationControl2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RangeValidator2.MaximumValue = DateTime.Now.AddDays(90).ToShortDateString();
            RangeValidator2.MinimumValue = DateTime.Now.ToShortDateString();
            
            if (!IsPostBack)
            {
                TextBox1.Focus();
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox3.Text = Calendar1.SelectedDate.ToShortDateString();            
        }

        protected void datebutton_Click(object sender, EventArgs e)
        {
           Calendar1.Visible = !Calendar1.Visible;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Your data is submitted to server";
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Please check your details and retry";
            }
        }
    }
}