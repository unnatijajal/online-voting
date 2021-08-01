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

public partial class voter_home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString );
    SqlDataAdapter da;
    DataTable dt=new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        con.Open();
        string q1 = "select p.logo,c.name from party p,candidate c where c.constituency_no=(select constituency_no from voter where username='" + Session["vuname"].ToString() + "' and p.pid=c.pid)";
        da = new SqlDataAdapter(q1, con);
        da.Fill(dt);
       
        if (dt.Rows.Count > 0)
        {
            //string candidate_info="<table style='width:300px;height:300px' border=1>";
            string candidate_info = "<ul class='list-unstyled'>";
            for(int i=0;i<dt.Rows.Count;i++)
            {
                //Response.Write(dt.Rows[i]["logo"].ToString());
                //candidate_info = candidate_info + "<tr><td><img  src='"+dt.Rows[i]["logo"]+"' height='100px' width='100px'/></td><td>" + dt.Rows[i]["name"].ToString() + "</td></tr>";
                candidate_info += "<li class='media mt-3 border border-5  p-3  border-dark  ' style='border-radius:10px;' ><img class='align-self-center rounded mr-3 '  height='100px' width='100px' src='" + dt.Rows[i]["logo"].ToString()+ "'/> <div class='media-body'><p style='color:black;text-transform: capitalize;font-size:30px;'>" + dt.Rows[i]["name"]+ "<button ID='button1' onclick='del() ' class='btn btn-warning'>Vote</button></p></li>";
            }
            // candidate_info += "</table>";
            candidate_info += "</ul>";
            candidateinfo.InnerHtml =candidate_info;  
        }
        con.Close();
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("voter_login.aspx");
    }
}