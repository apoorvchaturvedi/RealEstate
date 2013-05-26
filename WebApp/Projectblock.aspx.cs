using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Block : System.Web.UI.Page
{
     Dal d1 = new Dal();
    Bal b1 = new Bal();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
                Bindblock();
                Label13.Visible = false;
                Label16.Visible = false;
                Label5.Visible = false;
                Button6.Visible = false;
                Button8.Visible = false;
                dropprojectname.Visible = false;
                txtblock.Visible = false;
                LinkButton4.Visible = false;

               
        }
    }


  public void  Bindblock()
    {
      string sessionid = Session["id"].ToString();
      DataSet ds= d1.bindgridblock(Convert.ToInt32(sessionid));
      GridView1.DataSource=ds;
      GridView1.DataBind();
    }

  protected void Button6_Click(object sender, EventArgs e)
  {
      int n = d1.countblock(Convert.ToInt32(dropprojectname.Text),txtblock.Text);
      if (n >= 1)
      {
          Label16.Text = txtblock.Text+" "+ "All Ready Exist Please Try Another Block.";
      }
      else
      {
          int a = d1.insertblockdal(Convert.ToInt32(dropprojectname.Text), txtblock.Text);
          if (a >= 1)
          {
              Label16.Text = "Your Record Insert Successfully.";
              txtblock.Text = "";
          }
      }
  }
  protected void Button8_Click(object sender, EventArgs e)
  {
      dropprojectname.Text = "[Select Projects]";
      txtblock.Text = "";
  }
  protected void LinkButton4_Click(object sender, EventArgs e)
  {
      GridView1.Visible = true;
      Label13.Visible = false;
      Label16.Visible = false;
      Label5.Visible = false;
      Button6.Visible = false;
      Button8.Visible = false;
      dropprojectname.Visible = false;
      txtblock.Visible = false;
      Response.Redirect("Projectblock.aspx");
  }
  protected void LinkButton3_Click(object sender, EventArgs e)
  {
      string sessionid1 = Session["id"].ToString();

      DataSet ds = d1.bindproject(Convert.ToInt32(sessionid1));

      dropprojectname.DataSource = ds;
      dropprojectname.DataTextField = "Project Name";
      dropprojectname.DataValueField = "ID";
      dropprojectname.DataBind();
      dropprojectname.Items.Insert(0, "[Select Projects]");


      GridView1.Visible = false;
      LinkButton4.Visible = false;

      Label13.Visible = true;
      Label16.Visible = true;
      Label5.Visible = true;
      Button6.Visible = true;
      Button8.Visible = true;
      dropprojectname.Visible = true;
      txtblock.Visible = true;
      LinkButton4.Visible = true;
      LinkButton3.Visible = false;
      // Response.Redirect("Projectblock.aspx");
      GridView1.Visible = false;


  }
  protected void LinkButton1_Click(object sender, EventArgs e)
  {
       LinkButton b = (LinkButton)sender;

      GridViewRow row = (GridViewRow)b.NamingContainer;

       string projectID = (((Label)row.FindControl("Label30")).Text);
       string projectName = (((Label)row.FindControl("Labe2")).Text);
       string Block = (((Label)row.FindControl("Label3")).Text);

      // Response.Redirect("EditBlock.aspx?projectid=" + projectID + "&projectname=" + projectName + "&Block=" + Block);

  }
  protected void LinkButton2_Click(object sender, EventArgs e)
  {
      //LinkButton b = (LinkButton)sender;

      //GridViewRow row = (GridViewRow)b.NamingContainer;

      //string blockid = (((Label)row.FindControl("Label30")).Text);
      //string BlockName = (((Label)row.FindControl("Label3")).Text);

     // int delete = d1.deleteblockdal(Convert.ToInt32(blockid));
      //if (delete>= 1)
      //{
      //    Bindblock();
      //    Label16.Text = "Your Block are delete Successfully.";
      //}

  }

  protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
  {
      //if (e.Row.RowType == DataControlRowType.DataRow)
      //{
      //    LinkButton l = (LinkButton)e.Row.FindControl("LinkButton2");
      //    l.Attributes.Add("onclick", "javascript:return " +
      //    "confirm('Are you sure you want to delete this record " +
      //    DataBinder.Eval(e.Row.DataItem, "Block") + "')");
      //}
  }
}