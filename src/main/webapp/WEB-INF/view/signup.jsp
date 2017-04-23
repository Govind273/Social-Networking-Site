<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Club Connect</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Website Template" />
<meta name="keywords"
	content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />




<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- <link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'> -->

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">

<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">

<!-- Owl Carousel  -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<!-- Theme style  -->
<link rel="stylesheet" href="css/style.css">

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>


	<!-----------------------------Header------------------------------------->
	<jsp:include page="header-simple.jsp" />

	<div id="gtco-started">
		<div class="gtco-container2">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading" >
					<h2>Join now!</h2>
				</div>
			</div>
			
			<div class="row col-md-offset-2 animate-box" style="width: 100%">
				<!--	<div class="col-md-12">  -->
				<form action="/validatebySendingMail" method="POST" >
					<div class="col-md-4 col-sm-4">
						<div align="middle">
							<label><b>First
									Name</b></label>
						</div>
						<div class="form-group" align="middle" valign="middle">

							 <input type="text" placeholder="First Name"
								name="firstName" required>
						</div>
					</div >
					<div class="col-md-4 col-sm-4">
						<div align="middle">
							<label><b>Last Name</b></label>
						</div>
						<div class="form-group" align="center" valign="middle">
							 <input type="text"
								placeholder="Last Name" name="lastName" required>
						</div>
					</div>
					
					<div class="col-md-4 col-sm-4">
						<div align="middle">
							<label><b>Email</b></label>
						</div>
						<div class="form-group" align="center" valign="middle">
							 <input type="text"
								placeholder="Email" name="emailId" required>
						</div>
					</div>
			  	 	
					<div class="col-md-4 col-sm-4">
						<div align="middle">
							<label><b>Password</b></label>
						</div>
						<div class="form-group" align="center" valign="middle">

							
							<input id="input1" type="password" placeholder="Enter Password"
								name="password" required>
						</div>
					</div>
					
					<div class="col-md-4 col-sm-4">
						<div align="middle">
							<label><b>Re-enter Password</b></label>
						</div>
						<div class="form-group" align="center" valign="middle">
							 <input id="input2"
								type="password" placeholder="Re-enter Password"
								name="Re-enter password" required>

						</div>
					</div>

					<div class="col-md-4 col-sm-4">
						<div align="middle">
							<label><b>Question 1:What is your mother's maiden name ?</b></label>
						</div>					
						<div class="form-group" align="center" valign="middle" >
							 <input type="text" placeholder="Answer" name="question1" required>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div align="middle">
							<label><b>Question 2:Which is your favorite movie ?</b></label>
						</div>
						<div class="form-group" align="center" valign="middle" >
							 <input type="text" placeholder="Answer" name="question2" style="align:middle" required>

						</div>
					</div>
					<div class="col-md-4 col-sm-4 " align="center">
						<button type="submit" class="btn btn-default btn-block"
							onclick="check()">Sign Up</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	






<script>
function check()
{ 
with(document.all){
if(input1.value!=input2.value)
{
alert("Password does not match")
input1.value = "";
input2.value = "";
}
else return true;      <!--document.forms[0].submit();-->
}
}
</script>
<script>
function myFunction() {
    alert("An email with One Time Password has been sent on this mail id for validation. Use that temporary password to fill in the text box below");
    var text_box = document.getElementById('mytextbox');
     {       
         text_box.setAttribute('readonly', 'readonly');
     }
     
}
</script>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	<jsp:include page="footer.jsp" />	
</body>
</html>

