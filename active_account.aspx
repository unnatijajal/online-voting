<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="active_account.aspx.cs" Inherits="active_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <table >
            <tr>
                <td colspan="2">Active Account</td>
            </tr>
            <tr>
                <td>Enter Code</td>
                <td>
                    <asp:TextBox ID="txtacode" runat="server"></asp:TextBox></td> 
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
            </tr>
        </table>
    </center>
</asp:Content>


