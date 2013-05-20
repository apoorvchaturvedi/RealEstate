using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;
public partial class Newunittargetkink : System.Web.UI.Page
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
           
            txtActualdate.Text = Request.QueryString["ActualDate"].ToString();

            dropmilestone.DataSource = new[] { Request.QueryString["milestone"].ToString() };
            dropmilestone.DataBind();

            txtupdatedate.Text = DateTime.Now.ToString("dd/MM/yyyy");
            dropprojectname.Enabled = false;
            dropblock.Enabled = false;
            dropmilestone.Enabled = false;
            txtupdatedate.Enabled = false;
            dropplot.Enabled = false;
        }
        
    }

    protected void Button6_Click(object sender, EventArgs e)
    {

        int n;
        if (txtActualdate.Text == "")
        {

            b.insertbalnull(dropprojectname.Text, dropblock.Text, dropplot.Text, dropmilestone.Text, txtupdatedate.Text);
            n = d.insertmilestonedalnull(b);
          
        }
        else
        {
            b.insertbal(dropprojectname.Text, dropblock.Text, dropplot.Text, dropmilestone.Text, txtActualdate.Text, txtupdatedate.Text);
             n = d.insertmilestonedal(b);
        }
       
        if (n>=1)
        {

            txtActualdate.Text = "";
            Response.Redirect("Unittargetkink.aspx");
        }
       
    }

    protected void Button7_Click(object sender, EventArgs e)
    {

        Session["Project Name"] = null;
        Response.Redirect("Unittargetkink.aspx");
        
    }
}