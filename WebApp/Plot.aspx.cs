using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Projectcash : System.Web.UI.Page
{
    Dal d2 = new Dal();
    Bal b2 = new Bal();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bindplot();
        }
    }


    public void Bindplot()
    {
        string unitid = Session["id"].ToString();

        DataSet ds = d2.bindgridplot(Convert.ToInt32(unitid));
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        Bindplot();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddNewUnit.aspx");
    }
}