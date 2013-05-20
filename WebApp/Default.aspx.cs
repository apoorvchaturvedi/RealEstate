using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
public partial class Default3 : System.Web.UI.Page
{
   SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select UserId,UserName,cast(Password as varchar(50)),UserType from dbo.UserInfo ", con);
        SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
               
                if (txtusername.Text == dr[1].ToString() &&txtpassward.Text == dr[2].ToString())
                {
                    
                    string type = dr[3].ToString();

                    if (type == "User")
                    {
                        Session.RemoveAll();
                      //  Session["id"] = dr[0].ToString();

                       // Session["type"] = dr[3].ToString();
                        //Session["newunitsessionid"] = dr[0].ToString();
                        //Session["MyId"] = dr[0].ToString();
                        //Session["MyuserId"] = dr[0].ToString();
                        //Session["unitid"] = dr[0].ToString();
                        //Session["proid"] = dr[0].ToString();
                       
                        Response.Redirect("Home.aspx");
                        
                    }

                    else if (type == "Admin")
                        {
                            Session.RemoveAll();
                            Session["id"] = dr[0].ToString();
                            Session["type"] = dr[3].ToString();
                           
                            Response.Redirect("AdminHome.aspx");
                        }
                    

                }
                else
                {
                    Label6.Text = " Login fail Please Try agaian?";
                }
            }
            con.Close();
        }
       
}