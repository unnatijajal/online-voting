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

public partial class party_registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {

        con.Open();
        String path = "";
        if(plogo.HasFile)
        {
            string ext = System.IO.Path.GetExtension(plogo.FileName);
            if (ext == ".jpg" || ext == ".jfif" || ext == ".png")
            {
                plogo.SaveAs(@"U:\sem6\project\online_voting\upload\\" + plogo.FileName);
                path = @"upload/" + plogo.FileName;
            }
            else
                Response.Write(" < script>alert('File can be eithr .jpg or .jfif or .png...')</script>");
           // Response.Write(path);
        }
        else
            Response.Write("<script>alert('Please upload photo...')</script>");
        string q = "insert into party values('"+txtpid.Text+"','"+txtpnm.Text+"','"+txtplnm.Text+"','"+txtphno.Text+"','"+txtemail.Text+"','"+path+"','"+gender.SelectedValue+"','"+txtpunm.Text+"','"+txtpass.Text+"')";
        cmd = new SqlCommand(q, con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
            Response.Write("<script>alert('Successfully Registered...')</script>");
        else
        {
            Response.Write("<script>alert('Errorr...')</script>");
            
        }
            
    }
}