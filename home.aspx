<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!DOCTYPE html>
<html><!-- Basic -->
<head>
	<meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Live Dinner Restaurant - Responsive HTML5 Template</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">    
	<!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <div class="container-fluid">

	<div class="row">
	<div class="col-sm-12 col-md-12 col-lg-4 mx-auto ">
        <table class="tb"  style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-variant: small-caps; color: #000000; border: medium solid #000080">
            <tr align="center" style="background-color:#80b3ff;" >
                <th border="1" class="rounded-top">Login/Registration To Avail Following Facilitiess</th>
            </tr>
            <tr >
                <td class="tr" style="background-color:white;">Register As a Party</td>
            </tr>
             <tr >
                <td class="tr" style="background-color:#cce0ff;">Login As a Party</td>
            </tr>
             <tr >
                <td class="tr" style="background-color:white;">Register As a Candidate</td>
            </tr>
             <tr >
                <td class="tr" style="background-color:#cce0ff;">Login As a Candidate</td>
            </tr>
             <tr >
                <td class="tr" style="background-color:white;">Register As Voter</td>
            </tr>
             <tr >
                <td class="tr" style="background-color:#cce0ff;">Login As a Voter</td>
            </tr>
        </table>
	</div>
    <div class="col-sm-12 col-md-12 col-lg-8 mx-auto">
	    <!-- Start Gallery -->
    	<div class="gallery-box">
		<div class="container">
			
			<div class="tz-gallery">
				<div class="row">
                    
					<div class="col-sm-12 col-md-6 col-lg-6 ">
                        <a class="lightbox " href="party_registration.aspx" >
                            <div class="img_text box1" >
                                <p>Party Registration</p>
                            </div>
                            </a>     
					</div>  
					<div class="col-sm-12 col-md-6 col-lg-6 ">
                        <a class="lightbox " href="candidate_registration.aspx" >
                            <div class="img_text box2" >
                                <p>Candidate Registration</p>
                            </div>
                            </a>
					</div>
                    <div class="col-sm-12 col-md-6 col-lg-6 ">
                        <a class="lightbox " href="voter_registration.aspx" >
                            <div class="img_text box3" >
                                <p>Voter Registration</p>
                            </div>
                            </a>
   					</div>
                    <div class="col-sm-12 col-md-6 col-lg-6 ">
                        <a class="lightbox " href="#" >
                            <div class="img_text box4" >
                                <!--p>Result</!--p-->
                            </div>
                            </a>  
					</div>
                    
					<!-- div class="col-sm-6 col-md-6 col-lg-6">
						<a class="lightbox" href="candidate_registration.aspx">
							<img class="img-fluid" src="image/6.jpg" alt="Gallery Images">
						</a>
					</><br />
					<div class="col-sm-6 col-md-6 col-lg-6">
						<a class="lightbox" href="voter_registration.aspx">
							<img class="img-fluid" src="image/2.png" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-12 col-md-6 col-lg-6">
						<a class="lightbox" href="images/gallery-img-04.jpg">
							<img class="img-fluid" src="image/7.jpg" alt="Gallery Images">
						</a>
					</div-->
					
				</div>
			</div>
		</div>
	</div>
      <!--end gallary-->
    </div>
    </div>
	
	
	
	
	</div>
	
	

	<!-- ALL JS FILES >
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS >
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script-->
</body>
</html>
</asp:Content>

