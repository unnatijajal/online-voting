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

public partial class subadmin_login : System.Web.UI.Page
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
        string q = "select user_name,pass from admin where user_name='" + txtsunm.Text + "' and pass='" + txtspass.Text + "'";
        da = new SqlDataAdapter(q, con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
            Response.Write("<script>alert('login successfully...')</script>");
        else
        {
            Response.Write("<script>alert('Username or password incorrect....')</script>");

        }
    }
}