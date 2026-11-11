using System;

namespace FirstProject
{
    public partial class RespondForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string name =Request.Form["name"];
            //string mobile = Request.Form["mobile"];
            //string email = Request.Form["email"];


            //WILL ALSO WORK
            string name =Request["name"];
            string mobile = Request["mobile"];  
            string email = Request["email"];

            Response.Write("<h3>Hello " + name + ", we have received your contact details.</h3>");
            Response.Write("<h4>Contact password: " + mobile + "<br /></h4>");
            Response.Write("<h4>Contact Email: " + email + "<br /></h4>");
        }
    }
}