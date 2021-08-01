<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="party_login.aspx.cs" Inherits="party_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
        <head> <link href="css/login_form.css" rel="stylesheet" /></head>
        <!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->

        <body>
            <div class="container">
          <div class="row">
              <div class="col-sm-12 col-md-6 col-lg-6">
                  <div class="wrapper">
                      <div class="form-signin">
                        <h2 class="form-signin-heading">Login</h2>
                         <asp:TextBox ID="txtpid" runat="server" required CssClass="form-control input_t" placehoder="Username"></asp:TextBox>
                         <asp:TextBox ID="txtppass" runat="server" TextMode="Password" required CssClass="form-control input_p" placehoder="Password"></asp:TextBox>
                         <asp:Button ID="login" runat="server" Text="LOGIN"  OnClick="login_Click"  CssClass="btn btn-lg btn-primary btn-block"/>
                      </div> 
                  </div>
              </div>
          </div>
                </div>
        </body>

    </html>
    
   

    <!--center>
    <table style="width: 20%; height: 248px; margin-bottom: 0px;">
    <tr style="height: 57px">
        <td colspan="2" style="text-align:center">LOGIN</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">User Name</td>
        <td>
           
        </td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Password</td>
        <td>
           
        </td>
    </tr>
    
    <tr style="height: 57px">
        <td colspan="2" style="text-align:center">
            
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align:right; height: 18px;" >
            
        </td>
    </tr>
    <tr style="height: 57px">
        <td colspan="2" style="text-align:center">
            
        </td>
    </tr>
</table>
</!--center-->
</asp:Content>

