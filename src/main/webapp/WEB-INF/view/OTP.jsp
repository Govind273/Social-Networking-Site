<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<title>Club Connect</title>
<head>
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


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
	max-width: 1100px;
	top: 0;
	left: 0;
}
</style>
<body class="w3-theme-l5">

	<!-----------------------------Header------------------------------------->
	<jsp:include page="header-simple.jsp" />



	<!-----------------------------Page Container------------------------------------->
	<div class="w3-container w3-content" style="max-width: 1100px">

		<!--The Grid -->
		<div class="w3-row">
			<br>
			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<br>
				<h2 align="center">Recovery by Email</h2>
				<br>
			</div>
			<br>
			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
			<form action= "/checkOTP" method = "GET">
			<br>
					<label for="emailId">Email</label> <input type="email"
						name="emailId" required class="form-control" id="emailId">
					<p></p>

					<label for="OTP">Temporary Password sent to your email</label> <input type="OTP"
						name="OTP" required class="form-control" id="OTP">
					<p></p>
						<button type="submit">Submit</button>
					<p></p>

				</form>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" /> 		
</body>
</html>


