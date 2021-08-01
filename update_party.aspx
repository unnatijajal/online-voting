<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="update_party.aspx.cs" Inherits="update_party" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cntbdy" Runat="Server">
    <html>
       <head>
           <link href="css/custom.css" rel="stylesheet" />
       </head>
       <body >
           <div class="main">
               <div class="contr">
                   <div class="registration-form">
                       <h2 class="h2_ud">Update Party</h2>
                       <asp:TextBox ID="txtpid" runat="server" required  placeholder="Party ID"></asp:TextBox>
                       <asp:TextBox ID="txtpnm" runat="server" required  placeholder="Party Name"></asp:TextBox>
                       <asp:TextBox ID="txtplnm" runat="server" required  placeholder="Leader Name"></asp:TextBox>
                       <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal"  required >
                                <asp:ListItem Value="male">Male</asp:ListItem>
                                <asp:ListItem Value="female">Female</asp:ListItem>
                       </asp:RadioButtonList>
                       <asp:TextBox ID="txtemail" runat="server" required  placeholder="Email"></asp:TextBox>&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">Email is  not valid</asp:RegularExpressionValidator>
                       <asp:TextBox ID="txtphno" runat="server" required  placeholder="Phone Number"></asp:TextBox>&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphno" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}" Display="Dynamic">Phone no Must be of 10 digit</asp:RegularExpressionValidator>
                       <asp:FileUpload ID="plogo" runat="server" required />
                       <asp:TextBox ID="txtpunm" runat="server"  placeholder="Username"></asp:TextBox>
                       <asp:TextBox ID="txtpass" runat="server" TextMode="Password" required  placeholder="Password"></asp:TextBox>
                       <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" required  placeholder="Confirm Password"></asp:TextBox>&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="Password and Confirm Password must be same" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" required></asp:CompareValidator>
                       <asp:Button ID="submit" runat="server"  CssClass="submit" Text="Registration" Height="37px" Width="137px"  />
                   </div>
               </div>
           </div>
                        
           <script src="vendor/jquery/jquery.min.js"></script>
           <script src="js/main.js"></script>       
       </body>
   </html> 
            
</asp:Content>

