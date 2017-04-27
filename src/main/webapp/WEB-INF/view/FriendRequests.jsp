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


		<jsp:include page="menuBar.jsp" />

			<!-------------------Left Column (empty...used only to center middle)------------------->
			<div class="w3-col m2" style="opacity: 0.0">1</div>

			<!-------------------Middle Column------------------->
			<div class="w3-col m8">
				<br>

				<!-- If there is a join request, display this box at the top -->
				<c:if test="${fn:length(friendRequests) > 0}">
					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
						<h4>
							<b>Join Requests</b>
						</h4>
						<p>You have ${fn:length(friendRequests)} potential new members
							in your clubs</p>
					</div>
					
					<!-- Add a container for each join request-->
					<c:forEach items="${friendRequests}" var="post">
						<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
							<table style="width: 100%">
								<tr>
									<td><img
										src="${post.profilePic }"
										height="70" width="70" alt="IU" border="0" /></td>
									<td style="text-align: center"><h6>Friend Name
											${post.userName} requests to join ${post.groupName}</h6></td>
									<td style="text-align: right">
										<form
											action="/acceptRequest/${user.userId }/${post.groupId }/${post.requestId}"
											method="post">
											<button type="submit">Accept</button>
										</form>
										<!-- DOES NOT DENY -->
										<form
											action="/denyRequest/${post.requestId}/${user.userId }"
											method="post">
											<button type="submit">Deny</button>
										</form>
									</td>
								</tr>
							</table>
						</div>
					</c:forEach>
				</c:if>
				
				<!-- If there are no join requests, display this box at the top -->
				<c:if test="${fn:length(friendRequests) == 0}">
					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
						<h5 style="align: center">No one currently is requesting to
							join one of your clubs</h5>
					</div>
				</c:if>
										<!--old version prior to 4/22
						<div id="left" class="row col-lg-12">

							<div class="form-group col-lg-6">
								<label for="PostBy" style="margin-top: 15%; font-size: 20px">Requested
									By ${post.userId}</label>
							</div>

							<div class="form-group col-lg-6">
								<label for="PostBy" style="margin-top: 15%; font-size: 20px">Requested
									To ${post.groupName}</label>
							</div>
							<form
								action="/acceptRequest/${user.userId }/${post.groupId }/${post.requestId }"
								method="post">
								<button type="submit">Accept</button>
							</form>

							<form action="/groupPage/${post.groupId }" method="get">
								<button type="submit">see group</button>
							</form>
						</div>-->

			</div>
		</div>
<jsp:include page="footer.jsp" />
</body>
