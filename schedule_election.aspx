<%@ Page Language="C#" AutoEventWireup="true" CodeFile="schedule_election.aspx.cs" Inherits="schedule_election" MasterPageFile="~/MasterPage2.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntbdy" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
    <link href="css/custom.css" rel="stylesheet" />
</head>
<body>

    
        <!--div class="content"-->
            <div class="main" >
                <div class="contr" style="height:490px;width:450px;">
                    <div class="registration-form">
                        <h2 class="h2_ud" style="font-size:xx-large;">Schedule Election</h2>
                         <asp:TextBox ID="txtedt" runat="server" placeholder="Election Date" ></asp:TextBox>
                        <asp:TextBox ID="txttopic" runat="server" placeholder="Topic"></asp:TextBox>
                        <asp:TextBox ID="txtstime" runat="server" placeholder="Start Time"></asp:TextBox>    
                        <asp:TextBox ID="txtetime" runat="server" placeholder="End Time"></asp:TextBox>
                        <div align="center" style="margin-top:70px;">
                            <asp:Button ID="Button1" runat="server" Text="Create" CssClass="submit" Height="37px" Width="137px" />
                        </div>
                    </div>
                </div>
            </div>
         <!--/div-->
     <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/main.js"></script>
</body>
</html>
</asp:Content>

