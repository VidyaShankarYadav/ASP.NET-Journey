using System;
using System.Web.UI.WebControls;

namespace FirstProject
{
    public partial class Success3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string Name = Request["TextBox1"];
            //string Email = Request["TextBox2"];
            //Response.Write($"<h1> user name: {Name} </h1>");
            //Response.Write($"<h1> user name: {Email} </h1>");


            //Page pp = PreviousPage;
            //Control ctrl = pp.FindControl("TextBox1");
            //TextBox tb = (TextBox)ctrl;
            //string Name = tb.Text;
            //Response.Write($"Hello  {Name}  , welcome to the site.");

            //Control ctrl = PreviousPage.FindControl("TextBox1");
            //TextBox tb = (TextBox)ctrl;
            //string Name = tb.Text;
            //Response.Write($"Hello  {Name}  , welcome to the site.");

            //TextBox tb = (TextBox)PreviousPage.FindControl("TextBox1");
            //string Name = tb.Text;
            //Response.Write($"Hello  {Name}  , welcome to the site.");

            string Name = ((TextBox)PreviousPage.FindControl("TextBox1")).Text;
            Response.Write($"Hello  {Name}  , welcome to the site.");

        }

    }
}