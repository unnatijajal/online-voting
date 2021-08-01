<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="subadmin_registration.aspx.cs" Inherits="subadmin_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <center>
    <table style="width: 20%; height: 248px; margin-bottom: 0px;">
    <tr style="height: 57px">
        <td colspan="2" style="text-align:center">REGISTRATION</td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">First&nbsp; Name</td>
        <td>
            <asp:TextBox ID="txtsubfnm" runat="server" required Width="168px"></asp:TextBox>
        </td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Last Name</td>
        <td>
            <asp:TextBox ID="txtsublnm" runat="server" required Width="168px"></asp:TextBox>
        </td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">User Name</td>
        <td>
            <asp:TextBox ID="txtsunm" runat="server" required Width="168px"></asp:TextBox>
        </td>
    </tr>
    <tr style="height: 45px">
        <td style="width: 222px">Password</td>
        <td>
            <asp:TextBox ID="txtspass" runat="server" TextMode="Password" required Width="168px"></asp:TextBox>
        </td>
    </tr>
    
    <tr style="height: 57px">
        <td colspan="2" style="text-align:center">
            <asp:Button ID="submit" runat="server" Text="REGISTRATION" Height="37px" Width="137px" OnClick="submit_Click" />
        </td>
    </tr>
    </table>
</center>
</asp:Content>

