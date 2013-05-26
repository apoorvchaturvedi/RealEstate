using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ProjectSummary : System.Web.UI.Page
{
    Dal d = new Dal();
    Bal b = new Bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            bindproject();
           // bindgridsunmmary();
        }
    }
    public void bindproject()
    {

        string sessionid1 = Session["id"].ToString();
        b.bindgridviewbal(sessionid1);
        DataSet ds = d.bindbalinkinfodal(b);
        dropprojectname.DataSource = ds;
        dropprojectname.DataTextField = "Project Name";
        dropprojectname.DataValueField = "Project Name";
        dropprojectname.DataBind();
        dropprojectname.Items.Insert(0, "[All Projects]");
        dropblock.Items.Insert(0, "[All Blocks]");
    }

    private void bindblock()
    {
        if (dropprojectname.Text == "[All Projects]")
        {

            dropblock.Text = "[All Blocks]";
        }
        else
        {
            b.bindblockbal(dropprojectname.Text);
            DataSet ds = d.bindblockdal(b);
            dropblock.DataSource = ds;
            dropblock.DataTextField = "Block";
            dropblock.DataValueField = "Block";
            dropblock.DataBind();
            dropblock.Items.Insert(0, "[All Blocks]");
        }
    }

    public void bindgridsunmmary()
    {
        if (dropprojectname.Text == "[All Projects]" && dropblock.Text == "[All Blocks]")
        {
            string projectsummaryId = Session["id"].ToString();

            DataSet ds = d.projectsummary(Convert.ToInt32(projectsummaryId));
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        if (dropprojectname.Text != "[All Projects]" && dropblock.Text != "[All Blocks]")
        {
            DataSet ds = d.binddetailprojects(dropprojectname.Text, dropblock.Text);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        if (dropprojectname.Text != "[All Projects]" && dropblock.Text == "[All Blocks]")
        {
            DataSet ds = d.binonlyproject(dropprojectname.Text);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }


    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        bindgridsunmmary();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //DataSet ds = d.binddetailprojects(dropprojectname.Text,dropblock.Text);
        //GridView1.DataSource = ds;
        //GridView1.DataBind();

        bindgridsunmmary();

    }
    protected void dropprojectname_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindblock();
    }
}