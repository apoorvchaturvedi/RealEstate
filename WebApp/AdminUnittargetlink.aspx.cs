using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    Dal d = new Dal();
    Bal b = new Bal();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
           
            if (Session["Project Name"] == null)
            {
                
                bindproject();
                dropblock.Items.Insert(0, "[Select Block]");
                dropplot.Items.Insert(0, "[Select Plot]");
                dropmilestone.Items.Insert(0, "[Select Milestone]");
               
               
            }
            else
            {
                bindproject();
                dropblock.Items.Insert(0, "[Select Block]");
                dropplot.Items.Insert(0, "[Select Plot]");
                dropmilestone.Items.Insert(0, "[Select Milestone]");
               // Label16.Text = "Your Record Update Successfully.";
               // Label16.Visible = true;
                bindgriddetail();
            }
        }
    }

    private void bindgriddetail()
    {
       
        DataSet ds = d.bindnewgridviewdal(Application["Project Name"].ToString(), Application["Block"].ToString(), Application["milestone"].ToString(), Application["Plot"].ToString());

        GridView1.DataSource = ds;
        GridView1.DataBind();
        Session["Project Name"] = null;
            
    }

   

    private void bindblock()
    {
        if (dropprojectname.Text == "[Select Projects]")
        {

            dropblock.Text = "[Select Block]";
            dropplot.Text="[Select Plot]";
            dropmilestone.Text = "[Select Milestone]";
        }
        else
        {
            b.bindblockbal(dropprojectname.Text);
            DataSet ds = d.bindblockdal(b);
            dropblock.DataSource = ds;
            dropblock.DataTextField = "Block";
            dropblock.DataValueField = "Block";
            dropblock.DataBind();
            dropblock.Items.Insert(0, "[Select Block]");
        }
    }
    public void bindproject()
    {
        string sessionid = Session["id"].ToString();
        b.bindgridviewbal(sessionid);
        DataSet ds = d.bindbalinkinfodal(b);
        dropprojectname.DataSource = ds;
        dropprojectname.DataTextField = "Project Name";
        dropprojectname.DataValueField = "Project Name";
        dropprojectname.DataBind();
        dropprojectname.Items.Insert(0,"[Select Projects]");
       
    }

    protected void dropprojectname_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindblock();
    }
    protected void dropblock_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindplot();
    }

    private void bindplot()
    {

        b.bindplotbal(dropprojectname.Text,dropblock.Text);
            DataSet ds = d.bindplotkdal(b);
            dropplot.DataSource = ds;
            dropplot.DataTextField = "PlotNo";
            dropplot.DataValueField = "PlotNo";
            dropplot.DataBind();
            dropplot.Items.Insert(0, "[Select Plot]");
        
    }

    private void bindmilstone()
    {
       
        b.bindmilstoneball(dropplot.Text);
        DataSet ds = d.bindmilstonedal(b);
        dropmilestone.DataSource = ds;
        dropmilestone.DataTextField = "Task details";
        dropmilestone.DataValueField = "Task details";
        dropmilestone.DataBind();
        dropmilestone.Items.Insert(0, "[Select Milestone]");

    }
    protected void dropplot_SelectedIndexChanged(object sender, EventArgs e)
    {
       bindmilstone();
       
    }

    
    protected void Button6_Click(object sender, EventArgs e)
    {
        bind();
        Label16.Visible = false;
       Application["Project Name"] =null ;
       Application["milestone"] = null;
    }

    public void bind()
    {
        
        
            b.bindgridbal(dropprojectname.Text, dropblock.Text, dropplot.Text, dropmilestone.Text);
            DataSet ds = d.bindgridtargetdal(b);
            GridView1.DataSource = ds;
            GridView1.DataBind();
    }
    
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();

        if (Application["Project Name"] == null && Application["milestone"] == null)
        {
            bind();
        }
        else
        {
            bindgriddetail();
        }
        
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton b = (LinkButton)sender;

        GridViewRow row = (GridViewRow)b.NamingContainer;

        string a= (((Label)row.FindControl("Label10")).Text);
        string f = (((Label)row.FindControl("Label9")).Text);
        string c= (((Label)row.FindControl("Label11")).Text);
        string Target= (((Label)row.FindControl("Label13")).Text);
        string plot = (((Label)row.FindControl("Label12")).Text);
        string Id = (((Label)row.FindControl("Label17")).Text);
        string remark = (((Label)row.FindControl("Label25")).Text);

        Application["milestone"] = a.ToString();
        Application["Project Name"] = f.ToString();
        Session["Project Name"] = f.ToString();

        Application["remarks"] = remark.ToString();
        Application["Block"] = c.ToString();
        Application["ActualDate"] = Target.ToString();
        Application["Plot"] = plot.ToString();
        Application["ID"] = Id;
        Response.Redirect("Testdminunittargetkink.aspx?milestone=" + a + "&projectName=" + f + "&Blockname=" + c + "&ActualDate=" + Target + "&PlotName=" + plot + "&ID=" + Id+"&remark="+remark);
        
    }
   
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        LinkButton b = (LinkButton)sender;

        GridViewRow row = (GridViewRow)b.NamingContainer;

        string a = (((Label)row.FindControl("Label17")).Text);

       // int l = d.deleteUnitLinkinfo(Convert.ToInt32(a));

        //Label16.Text = "Your Milestone Record Deleted.";
        //bind();
        //bindproject();
    }
}