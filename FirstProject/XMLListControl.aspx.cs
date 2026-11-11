using System;
using System.Data;
using System.Web.UI.WebControls;

namespace FirstProject
{
    public partial class XMLListControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string xmlpath = Server.MapPath("~/Product.xml");
                DataSet ds = new DataSet();
                ds.ReadXml(xmlpath);

                ListBox1.DataSource = ds;
                ListBox1.DataTextField = "Name";
                ListBox1.DataValueField = "Id";
                ListBox1.DataBind();


                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Name";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "-Select Product-");


                RadioButtonList1.DataSource = ds;
                RadioButtonList1.DataTextField = "Name";
                RadioButtonList1.DataValueField = "Id";
                RadioButtonList1.DataBind();


                CheckBoxList2.DataSource = ds;
                CheckBoxList2.DataTextField = "Name";
                CheckBoxList2.DataValueField = "Id";
                CheckBoxList2.DataBind();


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            foreach (int index in ListBox1.GetSelectedIndices())
            {
                ListItem li = ListBox1.Items[index];
                Label1.Text += li.Value + ": " + li.Text + "<br  />";
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex > 0)
            {
                ListItem li = DropDownList1.SelectedItem;
                Label2.Text = li.Value + ": " + li.Text;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem != null)
            {
                ListItem li = RadioButtonList1.SelectedItem;
                Label3.Text = li.Value + ": " + li.Text;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label4.Text = "";
            foreach (ListItem li in CheckBoxList2.Items)
            {
                if (li.Selected)
                {
                    Label4.Text += li.Value + ": " + li.Text + "<br  />";
                }
            }
        }
    }
}