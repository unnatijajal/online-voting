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
using System.Net.Mail;
using System.Net;

public partial class candidate_registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da,d1;
    DataTable dt = new DataTable(),dt1=new DataTable();
    /* Send Email to user email address
    public void Send_Account_Activation_Link(string emailaddress, string act_code)
    {
        MailMessage mm = new MailMessage();
        mm.Subject = "Account Activation";
        string body = "Hello " + txtcnm.Text + ",";
        body += "<br/><br/>Please click the following link to activate your account<br/>";
        body += "<br/><br/><a style='background:#000000; color:#fafafa; padding:10px 100px 10px 100px; width:350px; text-decoration:none; font-weight:bold; font-size:20px;' href = '" + Request.Url.AbsoluteUri.Replace( "Registration.aspx", "Account_Activation.aspx?ActivationCode=" + act_code) +"'>Click here to activate your account.</a>";
        body += "<br /><br />Thanks";
        mm.Body = body;
        mm.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
        smtp.Credentials = new System.Net.NetworkCredential("sureshjajal61@gmail.com","098123876234");
        smtp.EnableSsl = true;
        mm.To.Add(txtcemail.Text);
        string fromadd = "<sureshjajal61@gmail.com>";
        mm.From = new MailAddress(fromadd);
        smtp.Send(mm);
       }*/

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        con.Open();
         string select1 = "select constituency_no from constituency where constituency_name='"+txtccity.Text+"'";
         string select2 = "select pid from party where pname='"+txtpnm.Text+"'";
         d1 = new SqlDataAdapter(select1,con);
         d1.Fill(dt);
         da = new SqlDataAdapter(select2,con);
         da.Fill(dt1);

          String path = "";
        if (clogo.HasFile)
        {
            string ext = System.IO.Path.GetExtension(clogo.FileName);
            if (ext == ".jpg" || ext == ".jfif" || ext == ".png")
            {
                clogo.SaveAs(@"U:\sem6\project\online_voting\upload\\" + clogo.FileName);
                path = @"~/upload/" + clogo.FileName;
            }
            else
                Response.Write(" < script>alert('File can be eithr .jpg or .jfif or .png...')</script>");
            // Response.Write(path);
        }
        //Response.Write(dt.Rows[0]);
        string q = "insert into candidate(cid,pid,name,gender,email,phno,address,city,district,logo,pass,constituency_no,username) values('"+txtcid.Text+"','"+dt1.Rows[0]["pid"] + "','"+txtcnm.Text+"','"+gender.SelectedValue+"','"+txtcemail.Text+"','"+txtcphno.Text+"','"+txtcadd.Text+"','"+txtccity.Text+"','"+txtcdistrict.Text+"','"+path+"','"+txtcpass.Text+"','"+dt.Rows[0]["constituency_no"] + "','"+txtcunm.Text+"')";
        cmd = new SqlCommand(q, con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            //Response.Write("<script>alert('Successfully Registered...')</script>");
            Response.Redirect("home.aspx");
        }
        else
        {
            Response.Write("<script>alert('Errorr...')</script>");

        }
       /* string activationCode = Guid.NewGuid().ToString();
        string encry_password = Encrypt_Password(txtpassword.Text);
        cmd = new SqlCommand("insert into Registration values('" + txtusername.Text.ToLower() + "','" + encry_password + "','" + txtemailid.Text + "','" + activationCode + "','inactive')");
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        Send_Account_Activation_Link(txtcemail.Text, activationCode);
        con.Close();
        Session["user"] = txtcnm.Text;
        Response.Redirect("active_account.aspx");*/
    }

}