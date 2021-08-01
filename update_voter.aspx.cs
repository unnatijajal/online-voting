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

public partial class update_voter : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            con.Open();
            string q1 = "select v.voter_id,v.full_name,v.father_name,v.dob,v.gender,v.address,v.city,v.district,v.email,v.phno,v.pp,v.username,v.constituency_no,c.constituency_name from voter v,constituency c where v.username='" + Session["vuname"].ToString()+"' and v.constituency_no=c.constituency_no";
            da = new SqlDataAdapter(q1, con);
            da.Fill(dt);
            if(dt.Rows.Count>0)
            {
                txtvid.Text = dt.Rows[0]["voter_id"].ToString();
                txtvnm.Text = dt.Rows[0]["full_name"].ToString();
                txtfnm.Text = dt.Rows[0]["father_name"].ToString();
                txtvdob.Text = dt.Rows[0]["dob"].ToString();
                if (dt.Rows[0]["gender"].ToString() == "male")
                    gender.Items[0].Selected = true;
                else
                    gender.Items[1].Selected = true;
                txtvadd.Text = dt.Rows[0]["address"].ToString();
                txtvcity.Text = dt.Rows[0]["city"].ToString();
                txtvdistrict.Text = dt.Rows[0]["district"].ToString();
                txtphno.Text = dt.Rows[0]["phno"].ToString();
                txtvunm.Text = dt.Rows[0]["username"].ToString();
                txtcno.Text = dt.Rows[0]["constituency_no"].ToString();
                txtcnm.Text = dt.Rows[0]["constituency_name"].ToString();
                Image1.ImageUrl= dt.Rows[0]["pp"].ToString();
                txtemail.Text = dt.Rows[0]["email"].ToString();
                
            }
            con.Close();
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        con.Open();
        string q1 = "update voter set voter_id='"+ txtvid.Text + "',full_name='"+txtvnm.Text+"',father_name='"+txtfnm.Text+"',dob='"+txtvdob.Text+"',gender='"+gender.SelectedValue+"',address='"+txtvadd.Text+"',city='"+txtvcity.Text+"',district='"+txtvdistrict.Text+"',email='"+txtemail.Text+"',phno='"+txtphno.Text+"',username='"+txtvunm.Text+"',constituency_no="+txtcno.Text;
        SqlCommand cmd = new SqlCommand(q1,con);
        int i=cmd.ExecuteNonQuery();
        if(i>0)
        {
            Response.Write("<script>alert('Updated..')</script>"); 
        }
        else
            Response.Write("<script>alert('Error..')</script>");
        con.Close();
    }
}