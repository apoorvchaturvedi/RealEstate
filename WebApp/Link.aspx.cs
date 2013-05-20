using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            Session["p"] = null;
            Session["B"] = null;
            Session["Plot"] = null;
            Session["flore"] = null;
            Session["unit"] = null;
            Session["Milestone"] = null;
        }
    }
}