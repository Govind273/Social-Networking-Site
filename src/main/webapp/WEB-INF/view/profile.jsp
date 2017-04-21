<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<title>Club Connect</title>
<meta charset="UTF-8">
<!-- Template modified from "https://www.w3schools.com/w3css/default.asp" target="_blank"-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif
}

#coverTopSection {
	margin: 0;
	padding: 0;
}

.coverPic {
	display: block;
	position: relative;
	height: 415px;
	overflow: hidden;
	text-decoration: none;
}

.cover {
	width: . . . /* whatever width you want for the cover div */
   height: 270px;
	background-color: white; /* optional */
	overflow: hidden;
}

.cover>img {
	width: 100%;
}
</style>
<body class="w3-theme-l5">

	<!-- ********************Header, Cover Photo, Menu Bar******************** -->
	<jsp:include page="header.jsp" />



	<!-- ********************Page Container******************** -->
	<div class="w3-container w3-content"
		style="max-width: 1400px; margin-top: 80px">




		<!--Background Image, Menu Bar -->
		<div class="cover">
			<img src="${user.profilePic}" height="280px">
		</div>
		
		<form action = "/uploadProfilePhoto/${user.userId}" enctype="multipart/form-data" method = "POST">
		<div class="form-group col-lg-6" >
				    <label for="profilePic">Upload Your Profile Picture</label>
					<input type="file" name="file" >
				</div>
				<button type="submit">Upload</button>
		</form>

		<jsp:include page="menuBar.jsp" />
		<!--********** The Grid ***********-->
		<div class="w3-row">


			<!-- **********Left Column********** -->
			<div class="w3-col m3">
				<br>
				<!-- Profile Picture and brief info on user -->
				<div class="w3-card-2 w3-round w3-white">
					<div class="w3-container">
						<p class="w3-center">
							<img src="images/2.png" width="170" height="170">
						</p>
						<hr>
						<p>
							<i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i>
							Designer, UI
						</p>
						<p>
							<i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i>
							London, UK
						</p>
						<p>
							<i
								class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i>
							April 1, 1988
						</p>
					</div>
				</div>
				<br>

				<!-- Clubs -->
				<div class="w3-card-2 w3-round w3-white w3-hide-small">
					<div class="w3-container">
						<h3>Club Membership</h3>
						<p>Karun Fan Club</p>
						<p>Data Science Club</p>
						<p>We Love Vandana Club</p>
					</div>
				</div>

				<!-- **********End Left Column********** -->
			</div>
			<!-- **********Middle Column********** -->
			<div class="w3-col m7">
				<br>
				<!-- Container for name and user briefing -->
				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card-2 w3-round w3-white">
							<div class="w3-container w3-padding">
								<h2>${user.firstName}${user.lastName}</h2>
								<p>${user.about}</p>
							</div>
						</div>
					</div>
				</div>
        
	<div id="nav">
		<div>
			<img src="images/2.png" width="170" height="120"
				style="position: absolute; left: 80px; top: 480px;">
		</div>
		<div style="position: relative; left: 80px; top: 250px;">
			<form action="/yourGroups/${user.userId}" method="GET">
				<button type="submit">Ownership</button>
			</form>
		</div>
		<div style="position: relative; left: 80px; top: 250px;">
			<form action="/friends/${user.userId}" method="GET">
				<button type="submit">Friends</button>
			</form>
		</div>
		
		<div style="position: relative; left: 80px; top: 250px;">
			<form action="/messages/${user.userId}" method="GET">
				<button type="submit">Message</button>
			</form>
		</div>
	</div>

	<br>
	<!-- Footer-->
	<jsp:include page="footer.jsp" />
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
		$(function() {
			var thisTime;
			$('.nav-ul li').mouseleave(function(even) {
				thisTime = setTimeout(thisMouseOut, 1000);
			})
			$('.nav-ul li').mouseenter(function() {
				clearTimeout(thisTime);
				var thisUB = $('.nav-ul li').index($(this));
				if ($.trim($('.nav-slide-o').eq(thisUB).html()) != "") {
					$('.nav-slide').addClass('hover');
					$('.nav-slide-o').hide();
					$('.nav-slide-o').eq(thisUB).show();
				} else {
					$('.nav-slide').removeClass('hover');
				}
			})
			function thisMouseOut() {
				$('.nav-slide').removeClass('hover');
			}
			$('.nav-slide').mouseenter(function() {
				clearTimeout(thisTime);
				$('.nav-slide').addClass('hover');
			})
			$('.nav-slide').mouseleave(function() {
				$('.nav-slide').removeClass('hover');
			})
		})
	</script>


</div>
<!--<iframe src="signup.html" width="100%" height="100%"></iframe>-->
<link rel="stylesheet" href="css/style.css">
</body>
</html>
