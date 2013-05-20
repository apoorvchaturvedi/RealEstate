using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AddNewUnitWiseUpdate : System.Web.UI.Page
{
    Dal d = new Dal();
    Bal b = new Bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindproject1();
           // Session["p"] = null;
            dropblock.Items.Insert(0, "[Select Block]");
            dropplot.Items.Insert(0, "[Select Plot]");
            dropfloor.Items.Insert(0, "[Select Floor]");
            dropunit.Items.Insert(0, "[Select Unit]");
            dropmilestone.Items.Insert(0, "[Select Milestone]");
            txtupdatedate.Text = DateTime.Now.ToString("dd/MM/yyyy");
            txtupdatedate.Enabled = false;
           
        }
    }
    public void bindproject1()
    {
        string uid = Session["id"].ToString();
        b.bindgridviewbal(uid);
        DataSet ds = d.bindbalinkinfodal(b);
        dropprojectname.DataSource = ds;
        dropprojectname.DataTextField = "Project Name";
        dropprojectname.DataValueField = "Project Name";
        dropprojectname.DataBind();
        dropprojectname.Items.Insert(0, "[Select Projects]");

    }

    protected void dropprojectname_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindblock();
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
    protected void dropblock_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindplot();
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
        b.bindunit(dropprojectname.Text, dropblock.Text, dropplot.Text, dropfloor.Text);
        DataSet ds = d.bindunit(b);
        dropunit.DataSource = ds;
        dropunit.DataTextField = "Unit No";
        dropunit.DataValueField = "Unit No";
        dropunit.DataBind();
        dropunit.Items.Insert(0, "[Select Unit]");

    }
    protected void dropunit_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindmilestone();
    }
    private void bindmilestone()
    {
        b.bindmilestoneblockbal1(dropprojectname.Text);
        DataSet ds = d.bindmilstonedal1(b);
        dropmilestone.DataSource = ds;
        dropmilestone.DataTextField = "Label";
        dropmilestone.DataValueField = "Label";
        dropmilestone.DataBind();
        dropmilestone.Items.Insert(0, "[Select Milstones]");

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        string UnitId = "";
        DataSet ds = d.selectunitIDDal(dropprojectname.Text, dropblock.Text, dropplot.Text, dropfloor.Text, dropunit.Text);
        if (ds.Tables[0].Rows.Count > 0)
        {
            UnitId = ds.Tables[0].Rows[0].ItemArray[0].ToString();
        }

        b.linkinsertbal(UnitId, dropmilestone.Text, txtActualdate.Text, txtupdatedate.Text);
        int n = d.linnkinfodal(b);
        if (n >= 1)
        {
            Label16.Text = "Your Record Insert Successfully.";
            bindgriddetail();
        }
    }
       public void bindgriddetail()
        {
        DataSet ds1 = d.bindnewunittargetDal(dropprojectname.Text, dropblock.Text, dropplot.Text, dropfloor.Text, dropunit.Text, dropmilestone.Text, txtActualdate.Text,txtupdatedate.Text);

        GridView1.DataSource = ds1;
        GridView1.DataBind();
        dropprojectname.Text = "[Select Projects]";
        dropblock.Text = "[Select Block]";
        dropplot.Text = "[Select Plot]";
        dropfloor.Text = "[Select Floor]";
        dropunit.Text = "[Select Unit]";
        dropmilestone.Text ="[Select Milstones]";
        txtupdatedate.Text = "";
        txtActualdate.Text = "";
        }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("UnitWiseUpdation.aspx");
        //Session["p1"] = dropprojectname.Text;

    }

}