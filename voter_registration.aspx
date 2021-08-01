<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="voter_registration.aspx.cs" Inherits="voter_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
        <head>
            <link href="css/custom.css" rel="stylesheet" />
        </head>
        <body>
            <div class="main">
                <div class="contr">
                    <div class="registration-form">
                        <h2 class="h2_ud">REGISTRATION</h2>
                        <asp:TextBox ID="txtvid" runat="server" required AutoPostBack="True" placeholder="Voter ID"></asp:TextBox>
                        <asp:Image ID="Image1" runat="server" Height="150px" Width="150px"  CssClass="profile_pic" />
                        <asp:TextBox ID="txtvnm" runat="server" required placeholder="Voter Name"></asp:TextBox>
                        <asp:TextBox ID="txtfnm" runat="server" required placeholder="First Name"></asp:TextBox>
                        <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal" required Width="167px">
                            <asp:ListItem Value="male">Male</asp:ListItem>
                            <asp:ListItem Value="female">Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:TextBox ID="txtvdob" runat="server" placeholder="Date Of Birth"></asp:TextBox>
                        <asp:TextBox ID="txtvadd" runat="server" Columns="20" Rows="1" TextMode="MultiLine" placeholder="Address" required></asp:TextBox>
                        <asp:TextBox ID="txtvcity" runat="server" required placeholder="City"></asp:TextBox>
                        <asp:TextBox ID="txtvdistrict" runat="server" required placeholder="District"></asp:TextBox>
                        <asp:TextBox ID="txtvcon" runat="server" required placeholder="Constituency Name"></asp:TextBox>
                        <asp:TextBox ID="txtemail" runat="server" required placeholder="Email"></asp:TextBox>&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">Email is  not valid</asp:RegularExpressionValidator>
                         <asp:TextBox ID="txtphno" runat="server" required placeholder="Phone Number"></asp:TextBox>&nbsp;&nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphno" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}" Display="Dynamic">Phone no Must be of 10 digit</asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtvunm" runat="server" placeholder="Usesrname"></asp:TextBox>
                         <asp:TextBox ID="txtpass" runat="server" TextMode="Password" required placeholder="Password"></asp:TextBox>
                        <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" required placeholder="Confirm Password"></asp:TextBox>&nbsp;&nbsp; <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="Password and Confirm Password must be same" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" required></asp:CompareValidator>
                         <asp:Button ID="submit" runat="server" Text="Registration" Height="37px" Width="137px" OnClick="submit_Click" CssClass="submit"/>
                    </div>
                </div>
            </div>
        </body>    
    
    <!--table style="width: 52%; height: 205px; margin-bottom: 0px;" class="table">
    <tr style="height: 57px">
        <td colspan="2" style="text-align:center">REGISTRATION&nbsp;</td>
        <td ></td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px" >Voter Id</td>
        <td >
            
        </td>
        <td style="height: 45px"></td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Profile Pic</td>
        <td>
            
        </td>
        <td>
            
        </td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Full Name</td>
        <td>
            
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Father&#39;s/Husband&#39;s Name</td>
        <td>
            
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Gender</td>
        <td>
            
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Date of Birth</td>
        <td>
            
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Address</td>
        <td>
            
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">City</td>
        <td>
            
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">District</td>
        <td>
            
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Constituency</td>
        <td>
            
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Email Id</td>
        <td>
            
        </td>
        <td>
            
        </td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Phone No</td>
        <td>
           
        </td>
        <td>
           
        </td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">User Name</td>
        <td>
            
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Password</td>
        <td>
           
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Confirm Password</td>
        <td>
            
        </td>
        <td>
           
        </td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr style="height: 57px">
        <td colspan="2" style="text-align:center">
           
        </td>
        <td>&nbsp;</td>
    </tr>
</!--table>
    </div>
</center-->
    </html>
</asp:Content>

