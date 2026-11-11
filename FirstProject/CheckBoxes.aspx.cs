using System;
using System.Collections.Generic;
using System.Text;
namespace FirstProject
{
    public partial class CheckBoxes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                txtname.Focus();
        }

        
        protected void rbmale_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            if (txtname.Text.Trim().Length > 0)
                sb.Append($"Name:  {txtname.Text}  <br />");


            if (rbmale.Checked)
                sb.Append($"Gender: Male<br />");
            else if (rbfemale.Checked)
                sb.Append($"Gender: Female<br />");
            else if (rbtrans.Checked)
                sb.Append($"Gender: Transgender<br />");


            if (rbveg.Checked)
                sb.Append($"Eating Habbit: Vegetarian<br />");
            else if (rbnonveg.Checked)
                sb.Append($"Eating Habbit: Non-Vegetarian<br />");
            else if (rbvegan.Checked)
                sb.Append($"Eating Habbit: Vegan<br />");


            List<string> list = new List<string>();  // taking string list because we have to store multiple values into it;
            if (cbcricket.Checked)
                list.Add("Playing Cricket");
            if (cbbook.Checked)
                list.Add("Reading Books");
            if (cbfootball.Checked)
                list.Add("Playing Football");
            if (cbgym.Checked)
                list.Add("Hitting to the Gym");

            if (ListBox1.SelectedItem.Selected)
                sb.Append("Mumbai");

            Label1.Text = sb.ToString();
            //Label2.Text = ListBox1.SelectedItem.Text;
        }
    }
}