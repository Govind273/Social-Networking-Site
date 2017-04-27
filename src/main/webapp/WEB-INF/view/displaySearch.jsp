<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
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

	
		<div class="w3-row">
			<jsp:include page="menuBar.jsp" />
		<!--********** The Grid ***********-->
<c:if test="${fn:length(search)>0 }">

			<!--  Left column -->
			<div class="w3-col m4">
				<!-- Profile Picture and brief info on user -->
					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<div class="w3-container">
						<p class="w3-center">
						<h4>View Results By...</h4>
						<hr>
						<c:if test="${fn:length(search_user) > 0}">
						<button style="margin-top: 15%;" type="button" data-toggle="modal" data-target="#Showusers"> Users</button> <br>
						</c:if>
						<c:if test="${fn:length(search_group) > 0}">
						<button style="margin-top: 15%; margin-bottom: 15%;" type="button" data-toggle="modal" data-target="#Showgroups"> Groups</button>
						</c:if>
						</p>
						</div>
						</div>
						
			</div>
			
			<!-- Middle Column -->
			<div class="w3-col m8">
			<div class="w3-row-padding">
			<br>
					<div class="w3-col m12">
						<div class="w3-card-2 w3-round w3-white">
							<div class="w3-container w3-padding">
							<p><h2>Search Results</h2></p>
							</div>
						</div>
					</div>
				</div>
				<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<c:forEach items="${search_user}" var="post">
					<table>
					<tr><td>
								<label for="PostBy"
									style="margin-top: 5%; font-size: 20px; left: 20%"> <b>
									User Name:</b> <a href="/goToProfile/${post.userId }" >${post.firstName}</a>
								</label></td></tr>
							
<tr><td>
								<label for="PostBy" style=" font-size: 20px"><B>
								User About:</B> ${post.about}</label>
						</td></tr>
						</table>
					</c:forEach>
					<c:forEach items="${search_group}" var="post">
						<div id="left" class="row col-lg-12">
							<div class="form-group col-lg-6">

								<label for="PostBy"
									style="margin-top: 5%; font-size: 20px; left: 20%"> 
									<b>Group Name:</b><a href="/groupPage/${post.groupId }/${user.userId }"> ${post.groupName}
								</a></label>
							  <br>
<br>
								<label for="PostBy" style=" font-size: 20px"><B>Group
										About:</B> ${post.about}</label>
							</div>
							
						</div>
					</c:forEach>
				</div>
		</div>
		</c:if>		
		<c:if test="${fn:length(search)== 0 }">
No results found
</c:if>					
</div>


	</div>
	
		<div id="Showusers" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Users </h4>
				</div>
				<div class="modal-body">
					
					<c:forEach items="${search_user}" var="post">
						<table><tr>
								<td><label for="PostBy"
									style="margin-top: 5%; font-size: 20px; left: 20%"> <b>
									User Name:</b> <a href="/goToProfile/${post.userId }" >${post.firstName}</a>
								</label></td>
							</tr><tr>
							<td>	<label for="PostBy" style=" font-size: 20px"><B>
								User About:</B> ${post.about}</label>
						</td>	</tr></table>
					</c:forEach>
						
				</div>
				<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
			</div>
			
		</div>
	</div>
	<!-- Show groups -->
	<div id="Showgroups" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Groups</h4>
				</div>
				<div class="modal-body">
					
					<c:forEach items="${search_group}" var="post">
					<table>
					<tr>
					<td><label for="PostBy"
									style="margin-top: 5%; font-size: 20px; left: 20%"> <b>Group
										Name:</b> <a href="/groupPage/${post.groupId }/${user.userId }"> ${post.groupName}${post.groupName}
							</a>	</label>
							</td></tr>
							<tr>
							<td>
								<label for="PostBy" style=" font-size: 20px"><B>Group
										About:</B> ${post.about}</label><br>
							</td>
							</tr>
							</table>
							
					</c:forEach>
						
				</div>
				<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
			</div>
			
		</div>
	</div>
	<jsp:include page="footer.jsp" />	
</body>
</html>
