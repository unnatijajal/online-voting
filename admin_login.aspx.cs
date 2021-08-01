using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection con= new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "select * from super_admin where user_name='"+txtaunm.Text+"' and pass='"+txtapass.Text+"'";
        da = new SqlDataAdapter(query,con);
        da.Fill(dt);
        if(dt.Rows.Count>0)
        {
            // Response.Write("<script>alert('login successfullyy....')</script>");
            Response.Redirect("schedule_election.aspx");
            
        }
        else
        { 
            Response.Write("<script>alert('Username or password incorrect..')</script>");
            Response.Redirect("admin_login.aspx");
        }
    }
}