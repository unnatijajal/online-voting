<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="forgot_password.aspx.cs" Inherits="forgot_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--center>
    <table style="width: 20%; height: 248px; margin-bottom: 0px;">
    <tr style="height: 57px">
        <td style="text-align:center">Enter registered Email id </td>
    </tr>
    
    <tr style="height: 57px">
        <td style="text-align:center">
            
        </td>
    </tr>
    
    <tr style="height: 57px">
        <td style="text-align:center">
            
        </td>
    </tr>
    </table>
</center-->
    <style type="text/css">
        .form-gap {
           padding-top: 70px;
          
        }
        .pnl{
            border:2px solid blue;
            border-radius:5px;
            padding:20px;
            
        }
    </style>
 
    <div class="form-gap"></div>
<div class="main" >
    <div class="container" >
        <div class="row">
		    <div class="col-md-4 col-md-offset-4 ">
                <div class="panel panel-default pnl">
                    <div class="panel-body">
                        <div class="text-center">
                            <h3><i class="fa fa-lock fa-4x"></i></h3>
                            <h2 class="text-center">Forgot Password?</h2>
                            <p>You can reset your password here.</p>
                           <div class="panel-body">
                                <div id="register-form" role="form"  class="form" >
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-prepend input-group-text"><i style="font-size:30px;" class="fa fa-envelope"></i></span>
                                            <asp:TextBox ID="TextBox1" required runat="server" placeholder="email address" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="next" runat="server" Text="Next"  class="btn btn-lg btn-primary btn-block" OnClick="next_Click" />
                                    </div>
                                </div>
                          </div>
                      </div>
                   </div>
                </div>
           </div>
	    </div>
    </div>
</div>
</asp:Content>

