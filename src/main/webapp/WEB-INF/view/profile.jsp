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
  height: 300px;
  position: relative;
  overflow: hidden;
}

.cover>img {
 position: absolute;
  display: block;
  max-width:1400px;
  top: 0;
  left: 0;
}
</style>
<body class="w3-theme-l5">

	<!-- ********************Header, Cover Photo, Menu Bar******************** -->
	<jsp:include page="header.jsp" />



	<!-- ********************Page Container******************** -->
	<div class="w3-container w3-content"
		style="max-width: 1400px">




		<!--Background Image, Menu Bar -->
		<div class="cover">

			<img src="${user.profilePic}">
		</div>
		
		<form action = "/uploadProfilePhoto/${user.userId}" enctype="multipart/form-data" method = "POST">
		<div class="form-group col-lg-6" >
				    <label for="profilePic">Upload Your Profile Picture</label>
					<input type="file" name="file" >
				</div>
				<button type="submit">Upload</button>
		</form>

		
		<!--********** The Grid ***********-->
		<div class="w3-row">
<jsp:include page="menuBar.jsp" />
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
						</p>
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

				<!-- Container for biographic information of user -->
				<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<br>
					<h4>Current Job</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</p>
					<h4>Education</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</p>
					<h4>Last Job</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</p>
				</div>

				<!-- **********End Middle Column********** -->
			</div>
			<!-- **********Right Column********** -->
			<div class="w3-col m2">
				<br>
				<!-- Colleague Requests -->
				<div class="w3-card-2 w3-round w3-white w3-center">
					<div class="w3-container">
						<p>Friend Request</p>
						<img src="/w3images/avatar6.png" alt="Avatar" style="width: 50%"><br>
						<span>Jane Doe</span>
						<div class="w3-row w3-opacity">
							<div class="w3-half">
								<button class="w3-button w3-block w3-green w3-section"
									title="Accept">
									<i class="fa fa-check"></i>
								</button>
							</div>
							<div class="w3-half">
								<button class="w3-button w3-block w3-red w3-section"
									title="Decline">
									<i class="fa fa-remove"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<br>

				<!-- Ads -->
				<div class="w3-card-2 w3-round w3-white w3-padding-16 w3-center">
					<p>ADS</p>
				</div>
				<br>

				<!--********** End Right Column **********-->
			</div>
			<!--********** End Grid **********-->
		</div>
		<!--********** End Page Container **********-->
	</div>

	<br>

	<!-- Footer <footer class="w3-container w3-theme-d5"><color: rgb(117,0,0)>
  <p style="color:white;"><p style="text-align:center;">&copy; 2017 Club Connect</p>
</footer>-->
	<jsp:include page="footer.jsp" />
</body>
</html>
