<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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



<!-------------------------------------------------------------------------------CSS------------------------------------------------------------------------------->
<style>
#text_post {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	height: 25%;
}

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

table, th, td {
	border: 0px
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}
</style>


<!------------------------------------------------------------------------------Body------------------------------------------------------------------------------->
<body class="w3-theme-l5">

	<!---------------------------------------Header, Container, Cover Photo, Menu Bar--------------------------------------->
	<jsp:include page="header.jsp" />

	<!-- Page Container -->
	<div class="w3-container w3-content" style="max-width: 1400px">

		<!--Background Image, Menu Bar -->
		<div class="cover">
			<img src="images/iu6.jpeg">
		</div>

		<!--The Grid-->
		<div class="w3-row">
			<jsp:include page="menuBar.jsp" />
			
			<!-------------------Left Column (empty...used only to center middle------------------->
			<div class="w3-col m3" style="opacity: 0.0">1</div>

			<!-------------------Middle Column------------------->
			<div class="w3-col m5">
				<br>
				<!-- Add a container for each colleague-->
				<c:if test="${fn:length(myFriends) > 0}">
				<c:forEach items="${myFriends}" var="post">

					<!-- Creates new container for each post on club all -->
					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
						<table style="width: 100%">
							<tr>
								<td><img
									src="https://assets.iu.edu/brand/legacy/trident-tab.gif"
									height="70" width="70" alt="IU" border="0" /></td>
								<td style="text-align: center"><h6><b>Friend Name ${post.userId}</b></h6> &nbsp; (# of
									messages)</td>
								<td style="text-align: right">
									<form
										action="doMessageToThisFriend/${user.userId }/${post.userId }"
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
				<c:if test="${fn:length(myFriends) == 0}">
					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<h4 style = "align: center">That's weird, you don't have any colleagues. Join clubs to network and start messaging!
					</h4></div>
				</c:if>

			</div>
		</div>
	</div>
	<!--  <jsp:include page="footer.jsp" /> -->		
</body>
