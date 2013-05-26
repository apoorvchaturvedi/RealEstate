using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Home : System.Web.UI.Page
{
    Dal d = new Dal();
    Bal b = new Bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindgrid();
            LinkButton5.Visible = false;
            LinkButton6.Visible = true;
        }
       
        
    }

    private void bindgrid()
    {
        string sessionid = Session["id"].ToString();
        b.bindgridviewbal(sessionid);
        DataSet ds = d.gridbinddal(b);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        LinkButton6.Visible = false;
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton b = (LinkButton)sender;

        GridViewRow row = (GridViewRow)b.NamingContainer;

        string projectID= (((Label)row.FindControl("Label1")).Text);
        //Session["projectID"] = projectID;
        ViewState["projectIDes"] = projectID;
        string projectName = (((Label)row.FindControl("Label2")).Text);
        Label11.Text = "Project Name:"+projectName.ToString();
        bind();
        LinkButton5.Visible = true;
    }
    public void bind()
    {
        GridView1.Visible = false;
       
        DataSet ds = d.bindmilestonedal(Convert.ToInt32(ViewState["projectIDes"].ToString()));

        GridView2.DataSource = ds;
        GridView2.DataBind();
    }
    
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        GridView2.DataBind();
        bind();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
        GridView2.Visible = false;
        //bindgrid();
        //Session["projectID"] = "";
    }
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        LinkButton b = (LinkButton)sender;

        GridViewRow row = (GridViewRow)b.NamingContainer;

        string ID = (((Label)row.FindControl("Label9")).Text);

        

        int delete = d.deletemilestone(Convert.ToInt32(ID));
        if (delete==1)
        {
            Label12.Text = "Milestone are delete Successfully";
        }
        bind();
    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        bind();
    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView2.Rows[e.RowIndex];
        Label milestoneID = (Label)row.FindControl("Label9");
        TextBox milestone = (TextBox)row.FindControl("TextBox2");
      int update= d.updatemilestone(Convert.ToInt32(milestoneID.Text),milestone.Text);

      if (update == 1)
      {
          Label12.Text = "Milestone are update Successfully";
          Label12.Visible = true;
      }
      GridView2.EditIndex = -1;
        bind();
       
    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        Label12.Visible = false;
        bind();
        GridViewRow row = (GridViewRow)GridView2.Rows[e.NewEditIndex];
        Label milestoneID = (Label)row.FindControl("Label9");
        //TextBox milestonel = (TextBox)row.FindControl("TextBox1");

        TextBox milestone = (TextBox)row.FindControl("TextBox2");
        DataSet ds = d.bindmilestongridview2(Convert.ToInt32(milestoneID.Text));

        if (ds.Tables[0].Rows.Count > 0)
        {
            string l = ds.Tables[0].Rows[0].ItemArray[0].ToString();

            milestone.Text = l;

        }

    }

   
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("ADD"))
        {
            
            TextBox milestone = (TextBox)GridView2.FooterRow.FindControl("TextBox1");
            string project_Id = ViewState["projectIDes"].ToString();

            int insert = d.insertmilestone(milestone.Text, Convert.ToInt32(project_Id));
            if (insert == 1)
            {
                Label12.Text = "Milestone are add Successfully";
            }
           
            bind();
        }
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddProject.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton b = (LinkButton)sender;

        GridViewRow row = (GridViewRow)b.NamingContainer;

        string projectID = (((Label)row.FindControl("Label1")).Text);
        string projectName = (((Label)row.FindControl("Label2")).Text);
        string categary = (((Label)row.FindControl("Label3")).Text);
        string startdate = (((Label)row.FindControl("Label4")).Text);
        string enddate = (((Label)row.FindControl("Label5")).Text);
        string status = (((Label)row.FindControl("Label6")).Text);
        string location = (((Label)row.FindControl("Label7")).Text);
        string budget = (((Label)row.FindControl("Label8")).Text);

        Response.Redirect("EditProject.aspx?projectid=" + projectID + "&projectname=" + projectName + "&categary=" + categary + "&satartdate=" + startdate + "&enddate=" + enddate + "&status=" + status + "&location=" + location + "&budget=" + budget);

        Label11.Text = "Project Name:" + projectName.ToString();
        bindgrid();
        LinkButton5.Visible = true;
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton l = (LinkButton)e.Row.FindControl("LinkButton4");
            l.Attributes.Add("onclick", "javascript:return " +
            "confirm('Are you sure you want to delete this record " +
            DataBinder.Eval(e.Row.DataItem, "Label") + "')");
        }
    }
}