using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UnitWiseUpdation : System.Web.UI.Page
{
    Dal d = new Dal();
    Bal b = new Bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["p"] == null)
            {
               
                bindproject1();

                dropblock.Items.Insert(0, "[Select Block]");
                dropplot.Items.Insert(0, "[Select Plot]");
                dropfloor.Items.Insert(0, "[Select Floor]");
                dropunit.Items.Insert(0, "[Select Unit]");
                dropmilestone.Items.Insert(0, "[Select Milestone]");
              
            }

            else
            {
                bindproject1();
                bindgridview();
                dropblock.Items.Insert(0, "[Select Block]");
                dropplot.Items.Insert(0, "[Select Plot]");
                dropfloor.Items.Insert(0, "[Select Floor]");
                dropunit.Items.Insert(0, "[Select Unit]");
                dropmilestone.Items.Insert(0, "[Select Milestone]");
                //Label16.Text = "Your Record Update Successfully.";

            }
        }
       
    }

    public void bindproject1()
    {
        string unitid = Session["id"].ToString();
        b.bindgridviewbal(unitid);
        DataSet ds = d.bindbalinkinfodal(b);
        dropprojectname.DataSource = ds;
        dropprojectname.DataTextField = "Project Name";
        dropprojectname.DataValueField = "Project Name";
        dropprojectname.DataBind();
        dropprojectname.Items.Insert(0, "[Select Projects]");

    }
    private void bindblock()
    {
        if (dropprojectname.Text == "[Select Projects]")
        {

            dropblock.Text = "[Select Block]";
            dropplot.Text = "[Select Plot]";
            dropfloor.Text = "[Select Floor]";
            dropunit.Text = "[Select Floor]";
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
    protected void dropprojectname_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindblock();
    }
    public void bindplot()
    {
        b.bindplotbal(dropprojectname.Text,dropblock.Text);
        DataSet ds = d.bindplotkdal(b);
        dropplot.DataSource = ds;
        dropplot.DataTextField = "PlotNo";
        dropplot.DataValueField = "PlotNo";
        dropplot.DataBind();
        dropplot.Items.Insert(0, "[Select Plot]");
    }
    protected void dropblock_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindplot();
    }
    protected void dropplot_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindfloor();
    }
    public void bindfloor()
    {
        
        b.bindfloor(dropprojectname.Text,dropblock.Text,dropplot.Text);
        DataSet ds = d.bindfloordal(b);
        dropfloor.DataSource = ds;
        dropfloor.DataTextField = "Floor";
        dropfloor.DataValueField = "Floor";
        dropfloor.DataBind();
        dropfloor.Items.Insert(0, "[Select Floor]");
        if (dropprojectname.Text == "Park Generation")
        {
            dropfloor.Items.Insert(1, "Ground floor");
        }

    }
    protected void dropfloor_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindunit();
    }
    public void bindunit()
    {
        b.bindunit(dropprojectname.Text,dropblock.Text,dropplot.Text,dropfloor.Text);
        DataSet ds = d.bindunit(b);
        dropunit.DataSource = ds;
        dropunit.DataTextField = "Unit No";
        dropunit.DataValueField = "Unit No";
        dropunit.DataBind();
        dropunit.Items.Insert(0, "[Select Unit]");
        
    }
    protected void dropunit_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindmilstone();
    }
    public void bindmilstone()
    {
        b.bindmilestone(dropprojectname.Text,dropblock.Text,dropplot.Text,dropfloor.Text,dropunit.Text);
        DataSet ds = d.bindmilestonedal(b);
        dropmilestone.DataSource = ds;
        dropmilestone.DataTextField = "Task details";
        dropmilestone.DataValueField = "Task details";
        dropmilestone.DataBind();
        dropmilestone.Items.Insert(0, "[Select Milestone]");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        bindgrid();
        Label16.Visible = false;
    }
    public void bindgrid()
    {
        
            DataSet ds = d.binddalgridal(dropprojectname.Text, dropblock.Text, dropplot.Text, dropfloor.Text, dropunit.Text, dropmilestone.Text);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton b = (LinkButton)sender;

        GridViewRow row = (GridViewRow)b.NamingContainer;

        string a = (((Label)row.FindControl("Label10")).Text);
        Session["Milestone"] = a.ToString();
        string f = (((Label)row.FindControl("Label9")).Text);
        Session["p"] = f.ToString();
        string c = (((Label)row.FindControl("Label11")).Text);
        Session["B"] = c.ToString();
        string Actual = (((Label)row.FindControl("Label13")).Text);
        string plot = (((Label)row.FindControl("Label12")).Text);
        Session["Plot"] = plot.ToString();
        string Id = (((Label)row.FindControl("Label17")).Text);
        Session["Ides"] = Id.ToString();
        //ViewState["Id"] = Id.ToString();
        string floor = (((Label)row.FindControl("Label23")).Text);
        Session["flore"] = floor.ToString();
        string Unit = (((Label)row.FindControl("Label24")).Text);

        Session["unit"] = Unit.ToString();

        Response.Redirect("NewUnitWiseUpdate.aspx?milstone=" +a+ "&projectName=" +f+"&Blockname="+c+"&ActualDate="+Actual+"&PlotName="+plot+"&ID="+Id+"&floor="+floor+"&Unit="+Unit);
        //bindgridview();
    }

    public void bindgridview()
    {
       
            DataSet ds = d.binddalgridal(Session["p"].ToString(),Session["B"].ToString(), Session["Plot"].ToString(),Session["flore"].ToString(),Session["unit"].ToString(), Session["Milestone"].ToString());
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Session["p"] = null;
            Session["B"] = null;
            Session["Plot"] = null;
            Session["flore"] = null;
            Session["unit"] = null;
            Session["Milestone"] = null;
        
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton l = (LinkButton)e.Row.FindControl("LinkButton3");
            l.Attributes.Add("onclick", "javascript:return " +
            "confirm('Are you sure you want to delete this record " +
            DataBinder.Eval(e.Row.DataItem, "Task details") + "')");
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        LinkButton b = (LinkButton)sender;

        GridViewRow row = (GridViewRow)b.NamingContainer;

        string ID = (((Label)row.FindControl("Label17")).Text);

        int delete = d.unittargetmilestone(Convert.ToInt32(ID));
        if (delete>= 1)
        {
            bindgriddelete(ID);
            Label16.Text = "Your Record  Are Delete Successfully.";
            Label16.Visible = true;
            
        }
       
    }
    public void bindgriddelete(string id)
    {
        DataSet ds = d.binddelete(Convert.ToInt32(id));
        GridView1.DataSource= ds;
        GridView1.DataBind();
       
        
    }
}