using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AddNewUnit : System.Web.UI.Page
{
    Dal d = new Dal();
    Bal b = new Bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindproject1();
        }
    }


    public void bindproject1()
    {
        string uniid = Session["id"].ToString();
        b.bindgridviewbal(uniid);
        DataSet ds = d.bindbalinkinfodal(b);
        dropprojectname.DataSource = ds;
        dropprojectname.DataTextField = "Project Name";
        dropprojectname.DataValueField = "Project Name";
        dropprojectname.DataBind();
        dropprojectname.Items.Insert(0, "[Select Projects]");
        dropblock.Items.Insert(0, "[Select Block]");
        droptype.Items.Insert(0, "[Select Type]");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Plot.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        int n=d.insertunitdal(Convert.ToInt32(dropblock.Text), droptype.Text, txtunit.Text, txtplot.Text, txtfloor.Text, txtarea.Text);
        if (n >= 1)
        {
            Label21.Text = "Your Record Insert Successfully";
            txtplot.Text = "";
            txtfloor.Text = "";
            txtarea.Text = "";
            txtunit.Text = "";
            dropprojectname.Items.Insert(0, "[Select Projects]");
            dropblock.Items.Insert(0, "[Select Block]");
            droptype.Items.Insert(0, "[Select Type]");
        }
        
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        txtplot.Text = "";
        txtfloor.Text = "";
        txtarea.Text = "";
        txtunit.Text = "";
        dropprojectname.Text="[Select Projects]";
        dropblock.Text= "[Select Block]";
        droptype.Text="[Select Type]";
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
        }
        else
        {
            b.bindblockbal(dropprojectname.Text);
            DataSet ds = d.bindblockdal(b);
            dropblock.DataSource = ds;
            dropblock.DataTextField = "Block";
            dropblock.DataValueField = "ID";
            dropblock.DataBind();
            dropblock.Items.Insert(0, "[Select Block]");
        }
    }
    protected void dropblock_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        DataSet ds = d.bindbtype();
        droptype.DataSource = ds;
        droptype.DataTextField = "type";
        droptype.DataValueField = "type";
        droptype.DataBind();
        droptype.Items.Insert(0, "[Select Type]");
        
    }
}