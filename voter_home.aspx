<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="voter_home.aspx.cs" Inherits="voter_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
               
           </script>
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2">
                <ul>
                    <li>
                        <asp:LinkButton ID="LinkButton1" runat="server">Change Password</asp:LinkButton>
                        
                    </li>
                    <li><asp:LinkButton ID="udtdetail" runat="server" PostBackUrl="~/update_voter.aspx">Update Detail</asp:LinkButton></li>
                    <li><asp:LinkButton runat="server" >Show Result</asp:LinkButton></li>
                     <li><asp:LinkButton ID="LinkButton3" runat="server"  OnClick="LinkButton3_Click" >Log out</asp:LinkButton></li>
                </ul>
            </div>
            <div class="col-lg-10 col-md-10" id="candidateinfo" runat="server">
                
            </div>
        </div>
    </div>
</asp:Content>


