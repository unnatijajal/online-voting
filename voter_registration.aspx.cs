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

public partial class voter_registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    private int no;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            con.Open();
            string query = "select * from information_citizen where voter_id='" + txtvid.Text + "'";
            da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                txtvnm.Text = dt.Rows[0]["full_name"].ToString();
                txtfnm.Text = dt.Rows[0]["father_name"].ToString();
                txtvdob.Text= dt.Rows[0]["dob"].ToString();
                txtvadd.Text = dt.Rows[0]["address"].ToString();
                //ppv = dt.Rows[0]["pp"].ToString();
                Image1.ImageUrl = dt.Rows[0]["pp"].ToString();
                
                txtvcon.Text = dt.Rows[0]["constituency_name"].ToString();
                no =int.Parse( dt.Rows[0]["constituency_no"].ToString());
            }
            else
                Response.Write("<script>alert('error...')</script>");
           
            con.Close();
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
     
         con.Open();
        
        string q = "insert into voter  values('"+txtvid.Text+"','"+txtvnm.Text+"','"+txtfnm.Text+"','"+txtvdob.Text+ "','"+gender.SelectedValue+"','"+txtvadd.Text+"','"+txtvcity.Text+"','"+txtvdistrict.Text+"','"+txtemail.Text+"','"+txtphno.Text+"','"+ dt.Rows[0]["pp"].ToString() + "','"+txtvunm.Text+"','"+txtpass.Text+"',null,"+no+")";
         cmd = new SqlCommand(q,con);
         int i=cmd.ExecuteNonQuery();
         if (i > 0)
             Response.Write("<script>alert('Successfully Registered...')</script>");
         else
         {
             Response.Write("<script>alert('Errorr...')</script>");

         }
         con.Close();
    }
}