﻿using System;
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


public partial class partylist : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    SqlCommand cmd = new SqlCommand();
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        con.Open();
        string q1 = "select logo,pname from party";
        da = new SqlDataAdapter(q1, con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            //string candidate_info="<table style='width:300px;height:300px' border=1>";
            string party_info = "<center><table class='table table-hover tbl' >";
            for (i = 0; i < dt.Rows.Count; i++)
            {
                party_info += "<tr><th scope='row'>"+(i+1)+"</th><td><img style='height:100px;width:100px;border-radius:5px;' src='"+dt.Rows[i]["logo"]+"'/></td><td>"+dt.Rows[i]["pname"]+ "</td><td><button id='"+(i+1)+"' style='border:0;' onclick='click()' runat='server'><i class='fa fa-trash - alt' style='font-size:30px;'></i></button></td></tr>";
            }
            party_info += "</table></center>";
            partyinfo.InnerHtml = party_info;
        }
        con.Close();
    }

    public void click()
    {
       
    }
}