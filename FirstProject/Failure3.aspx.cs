using System;

namespace FirstProject
{
    public partial class Failure3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Name = Request.QueryString["Name"];
            Response.Write($"Hello  {Name}  , your credentials are  in-valid.");
        }
    }
}