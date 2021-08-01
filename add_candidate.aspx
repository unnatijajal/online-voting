<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="add_candidate.aspx.cs" Inherits="add_candidate" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cntbdy" Runat="Server">
    <html>
        <head>
            <link href="css/custom.css" rel="stylesheet" />
        </head>
        <body>
            <div class="main">
                <div class="contr">
                    <div class="registration-form">
                        <h2 class="h2_ud">Add Candidate</h2>
                         <asp:TextBox ID="txtcid" runat="server" placeholder="Candidate ID" required></asp:TextBox>
                         <asp:TextBox ID="txtcnm" runat="server" required placeholder="Candidate Name"></asp:TextBox>
                         <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal" required Width="167px">
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                         </asp:RadioButtonList>
                        <asp:TextBox ID="txtdob" runat="server" placeholder="Date Of Birth"></asp:TextBox>
                        <asp:TextBox ID="txtcadd" runat="server" Columns="20" Rows="3" TextMode="MultiLine" placeholder="Address" required></asp:TextBox>
                         <asp:TextBox ID="txtccity" runat="server" placeholder="City" required></asp:TextBox>
                        <asp:TextBox ID="txtcdistrict" runat="server" placeholder="District" required></asp:TextBox>
                        <asp:TextBox ID="txtcemail" runat="server" required placeholder="Email"></asp:TextBox>&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcemail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">Email is  not valid</asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtcphno" runat="server" required placeholder="Phone Number"></asp:TextBox>&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcphno" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}" Display="Dynamic">Phone no Must be of 10 digit</asp:RegularExpressionValidator>
                        <asp:FileUpload ID="clogo" runat="server" required />
                        <asp:TextBox ID="txtcunm" runat="server" placeholder="Username"></asp:TextBox>
                        <asp:TextBox ID="txtpass" runat="server" TextMode="Password" required placeholder="Password"></asp:TextBox>
                        <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" required placeholder="Confirm Password"></asp:TextBox>&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="Password and Confirm Password must be same" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" required></asp:CompareValidator>
                         <asp:TextBox ID="txtpnm" runat="server" required placeholder="Under Which Party?"></asp:TextBox>
                        <asp:Button ID="submit" runat="server" Text="Add" Height="37px" Width="137px" CssClass="submit"/>
                    </div>
                </div>
            </div>
        </body>
    </html>

</asp:Content>

