using System;
using System.Web.UI.WebControls;

namespace FirstProject
{
    public partial class Calculator2 : System.Web.UI.Page
    {
        
        protected void ButtonClicked(object sender, EventArgs e)
        {
            int num1 = int.Parse(TextBox1.Text);
            int num2 = int.Parse(TextBox2.Text);
            int result = 0;
            Button b = (Button)sender;
            switch (b.ID)
            {
                case "btnAdd":
                    result = num1 + num2;
                    break;
                case "btnSub":
                    result = num1 - num2;
                    break;

                case "btnMul":
                    result = num1 * num2;
                    break;

                case "btnDiv":
                    result = num1 / num2;
                    break;

                default:
                    Response.Write("Invalid");
                    break;
            }
            TextBoxResult.Text = result.ToString();
            
        }

        protected void ResetButtonClicked(object sender, EventArgs e)
        {
            TextBox1.Text = TextBox2.Text = TextBoxResult.Text = "";
            TextBox1.Focus();
        }
    }
}