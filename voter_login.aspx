<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="voter_login.aspx.cs" Inherits="voter_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <html>
       <head>
           <link href="css/custom.css" rel="stylesheet" />
           
       </head>
       <body>
        <div class="main">
           <div class="contr" style="width:400px;">
               <div class="row">
                   <div class="col-sm-12 col-md-12 col-lg-12 ">
                       <div class="registration-form">
                           <div align="center" style="margin-bottom:20px;">
                                <h2 style="font-size:xx-large;">Login</h2>
                            </div>
                            <asp:TextBox ID="txtvunm" runat="server" required placeholder="Username"></asp:TextBox>
                           <asp:TextBox ID="txtvpass" runat="server" TextMode="Password" required placeholder="Passwpord"></asp:TextBox>
                           <div align="right" style="margin-bottom:20px;">
                               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forgot_password.aspx" >Forgot Password?</asp:HyperLink>
                           </div>
                           <div align="center">
                            <asp:Button ID="login" runat="server" Text="LOGIN" Height="37px" Width="137px" OnClick="login_Click" CssClass="submit" />
                               Don&#39;t have an account?&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/voter_registration.aspx">Registration</asp:HyperLink>
                            </div>
                       </div>
                   </div>
               </div>
           </div>
          </div>
       </body>
   </html>
</asp:Content>


