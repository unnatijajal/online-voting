<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="candidate_dlist.aspx.cs" Inherits="candidate_dlist" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cntbdy" Runat="Server">
     <style type="text/css">
        .tbl{
            top:50%;
            left:50%;
            
            margin:100px;
            height:auto;
            width:700px;
        }
       td{
           text-align:justify;
           font-size:25px;
           text-transform:capitalize;
       }
    </style>
    <div id="cinfo" runat="server" class="table-responsive">

    </div>
</asp:Content>

