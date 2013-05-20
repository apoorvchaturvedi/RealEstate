using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AddProject : System.Web.UI.Page
{

    Dal d = new Dal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        
        int p;
       DateTime sdate =DateTime.ParseExact(txtstartdate.Text, "dd/MM/yyyy", null);

       DateTime edate =DateTime.ParseExact(txtenddate.Text, "dd/MM/yyyy", null);
       string uid = Session["proid"].ToString();
        p = d.insertproject(txtprojectName.Text, txtCategory.Text, sdate, edate, txtstatus.Text, txtlocation.Text,Convert.ToDecimal(txtbudget.Text));

       DataSet ds= d.projectid(txtprojectName.Text);
       if (ds.Tables[0].Rows.Count > 0)
       {
           string projectid = ds.Tables[0].Rows[0].ItemArray[0].ToString();
          p= d.insetuserprojectinfo(Convert.ToInt32(uid),Convert.ToInt32(projectid));
       }


       if (p >= 1)
       {
           Label20.Text = "Your Record Insert Successfully.";
       }
       txtstatus.Text = "";
       txtstartdate.Text = "";
       txtprojectName.Text = "";
       txtlocation.Text = "";
       txtenddate.Text = "";
       txtCategory.Text = "";
       txtbudget.Text = "";

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        txtstatus.Text = "";
        txtstartdate.Text = "";
        txtprojectName.Text = "";
        txtlocation.Text = "";
        txtenddate.Text = "";
        txtCategory.Text = "";
        txtbudget.Text = "";
    }
}