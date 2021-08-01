<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="verification.aspx.cs" Inherits="verification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <center>
    <table style="width: 20%; height: 248px; margin-bottom: 0px;">
    <tr style="height: 57px">
        <td style="text-align:center">Enter One Time Password(OTP)</td>
    </tr>
    
    <tr style="height: 57px">
        <td style="text-align:center">One Time Password (OTP) has been sent to your email ****,please enter the same here</td>
    </tr>
    
    <tr style="height: 57px">
        <td style="text-align:center">
            <asp:TextBox ID="txtotp" runat="server" required></asp:TextBox>
        </td>
    </tr>
    
    <tr style="height: 57px">
        <td style="text-align:center">
            <asp:Button ID="submit" runat="server" Text="Submit" Height="37px" Width="137px" />
        </td>
    </tr>
    </table>
</center>
</asp:Content>

