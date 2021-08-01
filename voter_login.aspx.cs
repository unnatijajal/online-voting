using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class voter_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {

        con.Open();
        string q = "select username,pass from voter where username='" + txtvunm.Text + "' and pass='" + txtvpass.Text + "'";
        da = new SqlDataAdapter(q, con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            //Response.Write("<script>alert('login successfully...')</script>");
            Session["vuname"] =txtvunm.Text;
            Response.Redirect("voter_home.aspx");
        }
            
        else
        {
            Response.Write("<script>alert('Username or password incorrect....')</script>");

        }

    }
}