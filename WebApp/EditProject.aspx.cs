using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ProjectInfo : System.Web.UI.Page
{
    Dal d = new Dal();
    Bal b = new Bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            txtprojectName.Text = Request.QueryString["projectname"].ToString();
            txtCategory.Text = Request.QueryString["categary"].ToString();
            txtstartdate.Text = Request.QueryString["satartdate"].ToString();
            txtenddate.Text = Request.QueryString["enddate"].ToString();
            txtstatus.Text = Request.QueryString["status"].ToString();
            
            txtlocation.Text = Request.QueryString["location"].ToString();

            txtbudget.Text = Request.QueryString["budget"].ToString();

        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string a= Request.QueryString["projectid"].ToString();
        DateTime sdate = DateTime.ParseExact(txtstartdate.Text, "dd/MM/yyyy", null);
        DateTime edate = DateTime.ParseExact(txtenddate.Text, "dd/MM/yyyy", null);
        int edit = d.editproject(txtprojectName.Text, txtCategory.Text, sdate,edate,txtstatus.Text, txtlocation.Text, Convert.ToDecimal(txtbudget.Text), Convert.ToInt32(a));
        if (edit >= 1)
        {
            Label20.Text = "Your Record Update Successfully.";
        }

        txtprojectName.Text = "";
        txtCategory.Text = "";
        txtstartdate.Text = "";
        txtenddate.Text = "";
        txtenddate.Text = "";
        txtlocation.Text = "";
        txtbudget.Text = "";
        txtstatus.Text = "";

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
            txtprojectName.Text = "";
            txtCategory.Text = "";
            txtstartdate.Text = "";
            txtenddate.Text = "";
            txtenddate.Text = "";
            txtlocation.Text = "";
            txtbudget.Text = "";
            txtstatus.Text = "";
    }
}