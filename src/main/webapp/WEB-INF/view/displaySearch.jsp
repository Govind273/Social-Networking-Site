<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" href="/css/style.css">
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

	<jsp:include page="menuBar.jsp"/>	
	</div>
	
	<form action="/advancedSearchUser/${searched_string }" method = "GET">
	
	<button type="submit">Users Only</button>
	</form>

	<form action="/advancedSearchGroup/${searched_string }" method = "GET">
	
	<button type="submit">Groups Only</button>
	</form>	
	

		<!--********** The Grid ***********-->

		<div class="w3-row">
			<jsp:include page="menuBar.jsp" />



	<div id="section">
		<div class="tile_div" style="position:absolute;  top:555px; left:25%; " align="left" >
		
				<font size="15" color="000000"><b>SEARCH RESULTS</b></font>
		</div>
			<c:if test="${fn:length(search) > 0}">
				<div class="CLubmembership" align="left">

					<c:forEach items="${search_group}" var="post">
						<div id="left" class="row col-lg-12">



							<div class="form-group col-lg-6">

								<label for="PostBy"
									style="margin-top: 15%; font-size: 20px; left: 20%"> <b>Group
										Name:</b> ${post.groupName}
								</label>
							</div>

							<div class="form-group col-lg-6">
								<label for="PostBy" style="margin-top: 15%; font-size: 20px"><B>Group
										About:</B> ${post.about}</label>
							</div>
							<form action="/requestGroup/${user.userId }/${post.groupId }"
								method="post">
								<button type="submit">Join</button>
							</form>

							<form action="/groupPage/${post.groupId }/${user.userId }"
								method="get">
								<button type="submit">see group</button>
							</form>
						</div>
					</c:forEach>

					<c:forEach items="${search_user}" var="post">
						<div id="left" class="row col-lg-12">



							<div class="form-group col-lg-6">

								<label for="PostBy"
									style="margin-top: 15%; font-size: 20px; left: 20%"> <b>User
										Name:</b> ${post.firstName}
								</label>
							</div>

							<div class="form-group col-lg-6">
								<label for="PostBy" style="margin-top: 15%; font-size: 20px"><B>User
										About:</B> ${post.about}</label>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:if>
			
			
			
			<c:if test="${fn:length(search)==0 }">
No results found
</c:if>
	</div>
	</div>
	
	
	<jsp:include page="footer.jsp" />	
</body>
</html>