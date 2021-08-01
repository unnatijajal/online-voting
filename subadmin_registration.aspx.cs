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

public partial class subadmin_registration : System.Web.UI.Page

{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into admin values (' "+txtsubfnm.Text+"','"+txtsublnm.Text+"','"+txtsunm.Text+"','"+txtspass.Text+"')";
        cmd = new SqlCommand(query,con);
        int i = cmd.ExecuteNonQuery();
        if (i>0)
            Response.Write("<script>alert('inserted successfully..')</script>");
        else
            Response.Write("<script>alert('error..')</script>");

    }
}