
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
<script type="text/javascript" src="/js/jquerygroupsProfile.js""></script>

<!--
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" href="/css/style.css">
</head>
  -->


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
	max-width: 1400px;
	top: 0;
	left: 0;
}
</style>
<body class="w3-theme-l5">

	<!-----------------------------Header------------------------------------->
	<jsp:include page="header-simple.jsp" />



	<!-----------------------------Page Container------------------------------------->
	<div class="w3-container w3-content" style="max-width: 1400px">

		<!--The Grid -->
		<div class="w3-row">
			<h1 align="center">Password Recovery</h1>
			<br>


			<!----------Left Column----------->
			<div class="w3-col m5">
				<div class="w3-card-2 w3-round w3-white">
					<div class="w3-container">
						<form action="/sendMail" method="POST">
							<h4>Recovery by Email</h4>
								<hr size = "3">
							<h6>Please enter your email to receive a temporary password
								in your inbox</h6>
							<label for="emailId">Email</label> <input type="email"
								name="emailId" required class="form-control" id="emailId">
							<button type="submit">Submit</button>
						</form>
						<br>
					</div>
				</div>
			</div>
			<!----------Middle Column...does nothing!----------->
			<div class="w3-col m2"></div>

			<!---------Right Column----------->
			<div class="w3-col m5">
				<div class="w3-card-2 w3-round w3-white">
					<div class="w3-container">
						<form action="/recoverPassword" method="GET">

							<div class="col-md-4 col-sm-4">

								<h4>Recovery by Security Questions</h4>
								<hr size = "3">
								<h6>Please enter your email ID and security questions
									answers</h6>

									<div class="form-group" align="left" valign="left">
										<label>Email ID</label> <input type="text" placeholder="Email"
											name="emailId" required>
									</div>
									<br>
								</div>

									<div class="form-group" align="left" valign="left">
										<label>Question 1: What is mother's maiden name?</label> <input
											type="text" placeholder="Answer" name="question1" required>
									</div>

									<div class="form-group" align="left" valign="left">
										<label>Question 2: What is your favorite movie?</label> <input
											type="text" placeholder="Answer" name="question2" required>
									</div>

								<div class="col-md-4 col-sm-4 col-md-offset-2">
									<button type="submit" class="btn btn-default btn-block">Submit</button>
								</div>
								<br>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


