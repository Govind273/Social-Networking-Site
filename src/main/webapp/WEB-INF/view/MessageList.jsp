<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<title>Club Connect</title>
<head>

<!-- Template modified from "https://www.w3schools.com/w3css/default.asp" target="_blank" and  https://www.w3schools.com/w3css/tryit.asp?filename=tryw3css_templates_social&stacked=h-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="/js/jquerygroupsProfile.js"></script>

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
					<td style="text-align: center"><h2>My Messages</h2> &nbsp; </td>
				<td style="text-align: center"><img
						src="https://assets.iu.edu/brand/legacy/trident-tab.gif"
						height="70" width="70" alt="IU" border="0" /></td>
										</tr>
			</table>
		</div>

			<!-------------------Left Column (empty...used only to center middle------------------->
			<div class="w3-col m2" style="opacity: 0.0">1</div>
			
		<!-----------------------Main Column----------------------->
		<div class="w3-col m8">
		
		<!-- Section Header -->
				<c:if test="${fn:length(friensMessageList) > 0}">

				<c:forEach items="${friensMessageList}" var="post">

					<!-- Creates new container for each post on club all -->

					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
						<table style="width: 100%">
							<tr>
								<td><img
									src="${post.profilePic }"
									height="70" width="70" alt="IU" border="0" /></td>
								<td style="text-align: center"><h6><b>Friend
					Id ${post.userId}</b></h6> &nbsp; </td>
								<td style="text-align: right">
									<form
										action="openMessagesOfThisFriend/${user.userId }/${post.userId }"
										method="GET">
										<button type="submit">Message</button>
									</form>
								</td>
							</tr>
						</table>
					</div>

				</c:forEach>
				</c:if>
								
				<!-- Display message if user has no colleagues -->
				<c:if test="${fn:length(friensMessageList) == 0}">
					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<h4 style = "align: center">That's weird, you don't have any messages. Start the conversations on your own!
					</h4></div>
				</c:if>

			</div>


	
	<!-- commented out old code to revert to in case screwed up, Nick 4/26 

<c:forEach items="${friensMessageList}" var="post">
		<div id="left" class="row col-lg-12">

			<div class="form-group col-lg-6">
				<label for="PostBy" style="margin-top: 15%; font-size: 20px">Friend
					Id ${post.userId}</label>
			</div>
			
		 	<div class="form-group col-lg-6">
			<form action = "openMessagesOfThisFriend/${user.userId }/${post.userId }" method = "GET">
				<button type = "submit">View</button>
				</form>
			</div>
		
		</div>
==============================
	</c:forEach>-->	

	</div>
	</div>
<jsp:include page="footer.jsp" />	
</body>