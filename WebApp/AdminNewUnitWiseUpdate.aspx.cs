using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class NewUnitWiseUpdate : System.Web.UI.Page
{
    Bal b = new Bal();
    Dal d = new Dal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dropprojectname.DataSource = new[] { Request.QueryString["projectName"].ToString() };
            dropprojectname.DataBind();
            dropblock.DataSource = new[] { Request.QueryString["Blockname"].ToString() };
            dropblock.DataBind();
            dropplot.DataSource = new[] { Request.QueryString["PlotName"].ToString() };
            dropplot.DataBind();
            dropfloor.DataSource = new[] { Request.QueryString["floor"].ToString() };
            dropfloor.DataBind();
            dropunit.DataSource = new[] { Request.QueryString["Unit"].ToString() };
            dropunit.DataBind();

            txtActualdate.Text = Request.QueryString["ActualDate"].ToString();
            txtremark.Text = Request.QueryString["remark"].ToString();
            dropmilestone.DataSource = new[] { Request.QueryString["milstone"].ToString() };
            dropmilestone.DataBind();

            txtupdatedate.Text = DateTime.Now.ToString("dd/MM/yyyy");
            dropprojectname.Enabled = false;
            dropblock.Enabled = false;
            dropmilestone.Enabled = false;
            txtupdatedate.Enabled = false;
            dropplot.Enabled = false;
            dropunit.Enabled = false;
            dropfloor.Enabled = false;
        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {

        int n;
        if (txtActualdate.Text == ""&&txtremark.Text=="")
        {

            //b.insertnewbalnull(dropprojectname.Text, dropblock.Text, dropplot.Text,dropfloor.Text,dropunit.Text,dropmilestone.Text, txtupdatedate.Text);
            n = d.inserttagetdatenull(dropprojectname.Text, dropblock.Text, dropplot.Text, dropfloor.Text, dropunit.Text, dropmilestone.Text, txtupdatedate.Text);

        }
        else
        {
            //b.insertnewbal(dropprojectname.Text, dropblock.Text, dropplot.Text,dropfloor.Text,dropunit.Text, dropmilestone.Text, txtActualdate.Text, txtupdatedate.Text,txtremark.Text);
            n = d.inserttargetdatedal(dropprojectname.Text, dropblock.Text, dropplot.Text, dropfloor.Text, dropunit.Text, dropmilestone.Text, txtActualdate.Text, txtupdatedate.Text, txtremark.Text);
        }

        if (n >= 1)
        {

            txtActualdate.Text = "";
            Response.Redirect("AdminUnitWiseUpdation.aspx");
        }
       
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminUnitWiseUpdation.aspx");
        txtActualdate.Text = "";
    }
   
}