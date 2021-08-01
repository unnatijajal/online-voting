<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="candidate_login.aspx.cs" Inherits="candidate_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table style="width: 20%; height: 248px; margin-bottom: 0px;">
    <tr style="height: 57px">
        <td colspan="2" style="text-align:center">LOGIN</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">User Name</td>
        <td>
            <asp:TextBox ID="txtcunm" runat="server" required Width="168px"></asp:TextBox>
        </td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Password</td>
        <td>
            <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" required Width="168px"></asp:TextBox>
        </td>
    </tr>
    
    <tr style="height: 57px">
        <td colspan="2" style="text-align:center">
            <asp:Button ID="login" runat="server" Text="LOGIN" Height="37px" Width="137px" OnClick="login_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align:right; height: 18px;" >
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forgot_password.aspx" >Forgot Password?</asp:HyperLink>
        </td>
    </tr>
    <tr style="height: 57px">
        <td colspan="2" style="text-align:center">
            Don&#39;t have an account?&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/candidate_registration.aspx">Registration</asp:HyperLink>
        </td>
    </tr>
</table>
</center>
</asp:Content>

