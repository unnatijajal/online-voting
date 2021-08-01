<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="update_voter.aspx.cs" Inherits="update_voter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
        <head>
            <link href="css/custom.css" rel="stylesheet" />
        </head> 
    <body>
        <div class="main">
            <div class="contr">
                <div class="registration-form">
                    <h2 class="h2_ud">Update</h2>
                    <asp:TextBox ID="txtvid" runat="server" required AutoPostBack="True" placeholder="Voter ID"></asp:TextBox>
                    <asp:Image ID="Image1" runat="server" Height="150px" Width="168px" style="border-radius:10px;" />
       
                    <asp:TextBox ID="txtvnm" runat="server" required placeholder="Voter Name"></asp:TextBox>
        
                    <asp:TextBox ID="txtfnm" runat="server" required placeholder="Father Name"></asp:TextBox>
       
                    <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal" required Width="167px">
                        <asp:ListItem Value="male">Male</asp:ListItem>
                        <asp:ListItem Value="female">Female</asp:ListItem>
                    </asp:RadioButtonList>
        
                    <asp:TextBox ID="txtvdob" runat="server" placeholder="Date Of Birth"></asp:TextBox>
        
                    <asp:TextBox ID="txtvadd" runat="server" Columns="20" Rows="1" TextMode="MultiLine" placeholder="Address" required></asp:TextBox>
       
                    <asp:TextBox ID="txtvcity" runat="server" required placeholder="City"></asp:TextBox>
       
                    <asp:TextBox ID="txtvdistrict" runat="server" required placeholder="District"></asp:TextBox>
       
                    <asp:TextBox ID="txtemail" runat="server" required placeholder="Email"></asp:TextBox>
       
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">Email is  not valid</asp:RegularExpressionValidator>
     
                    <asp:TextBox ID="txtphno" runat="server" required placeholder="Phone number"></asp:TextBox>
       
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphno" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}" Display="Dynamic">Phone no Must be of 10 digit</asp:RegularExpressionValidator>
      
                    <asp:TextBox ID="txtvunm" runat="server" placeholder="Username"></asp:TextBox>
      
                    <asp:TextBox ID="txtcno" runat="server" placeholder="Constituency number"></asp:TextBox>
       
       
                    <asp:TextBox ID="txtcnm" runat="server" placeholder="Constituency name"></asp:TextBox>
      
                    <asp:Button ID="submit" runat="server" Text="Update" Height="37px" Width="137px" OnClick="submit_Click" />
                </div>
            </div>
        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>  
    </body>
    </html>
</asp:Content>


