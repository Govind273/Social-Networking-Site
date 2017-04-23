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
</head>
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

table, th, td {
	border: 0px border-collapse: collapse;
	align: center;
}

th, td {
	padding: 5px;
	text-align: left;
}
</style>
<body class="w3-theme-l5">

	<!----------------------Header, Cover Photo, Menu Bar---------------------- -->
	<jsp:include page="header.jsp" />



	<!--Page Container-->
	<div class="w3-container w3-content" style="max-width: 1100px">
		<!--Background Image, Menu Bar -->
		<div class="cover">
			<img src="${user.backgroundPic}">
		</div>


		<!--The Grid -->
		<div class="w3-row">
			<jsp:include page="menuBar.jsp" />

		<!-----------------------Page Title Info----------------------->
			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
			<table style="width: 100%">
				<tr>
					<td style="text-align: center"><img
						src="https://assets.iu.edu/brand/legacy/trident-tab.gif"
						height="70" width="70" alt="IU" border="0" /></td>
					<td style="text-align: center"><h2>Messaging with
							Colleague Name ${post.senderName}</h2> &nbsp; (${fn:length(myMessages)} Messages)</td>
				<td style="text-align: center"><img
						src="https://assets.iu.edu/brand/legacy/trident-tab.gif"
						height="70" width="70" alt="IU" border="0" /></td>
										</tr>
			</table>
		</div>

		<!-----------------------Left Column----------------------->
		<div class="w3-col m6">
		
		<!-- Section Header -->
			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<h3 align="center">Send a new Message</h3>
			</div>
			
			<!-- Send Message Box-->
			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<form action="/sendMessage/${user.userId }/${friendMessage}"
					method="POST">
					<p></p>
					<textarea cols="60" rows="5" name="message"></textarea>
					<p></p>
					<button type="submit">Send</button>
				</form>
				<p></p>
			</div>
		</div>

		<!-----------------------Right Column----------------------->
		<div class="w3-col m6">
		
				<!-- Section Header -->
			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<h3 align="center">Message History</h3>
			</div>

				<c:if test="${fn:length(myMessages) > 0}">
					<c:forEach items="${myMessages}" var="post">
					
						<!-- Creates new container for each post on club all -->
						<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
							<p>Apr 23, 2017 8:33pm</p>
							<hr>

							<p> ${post.message}</p>
						</div>
					</c:forEach>
				</c:if>

				<!-- Display message if user has no colleagues -->
				<c:if test="${fn:length(myMessages) == 0}">
					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
						<h5 style="align: center">You don't have any previous
							messages with ${post.senderName} yet. It's up to you to start the
							conversation</h5>
					</div>
				</c:if>
			</div>
		</div>
		<!--  <jsp:include page="footer.jsp" /> -->
</body>