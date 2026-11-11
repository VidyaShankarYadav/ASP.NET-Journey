using System;
using System.Drawing;

namespace FirstProject
{
    public partial class ColorDialogue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            div1.Attributes.Add("style", "background-color:" + TextBox1.Text);
        }
    }
}