<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="set_new_password.aspx.cs" Inherits="set_new_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center>
    <table style="width: 20%; height: 248px; margin-bottom: 0px;">
    <tr style="height: 57px">
        <td style="text-align:center" colspan="2">Set New Password</td>
        <td style="text-align:center">&nbsp;</td>
    </tr>
    
    <tr style="height: 57px">
        <td style="text-align:center">New Password</td>
        <td style="text-align:center">
            <asp:TextBox ID="txtnpass" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td style="text-align:center">&nbsp;</td>
    </tr>
    
    <tr style="height: 57px">
        <td style="text-align:center">
            Confirm&nbsp; New Password</td>
        <td style="text-align:center">
            <asp:TextBox ID="txtncpass" runat="server" TextMode="Password" required></asp:TextBox>
        </td>
        <td style="text-align:center">
            <asp:CompareValidator required ID="CompareValidator1" runat="server" ControlToCompare="txtnpass" ControlToValidate="txtncpass" Display="Dynamic" ErrorMessage="New Password and confirm new password must be same" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
        </td>
    </tr>
    
    <tr style="height: 57px">
        <td style="text-align:center" colspan="2">
            <asp:Button ID="submit" runat="server" Text="Set" Height="37px" Width="137px" />
        </td>
        <td style="text-align:center">
            &nbsp;</td>
    </tr>
    </table>
</center>
</asp:Content>

