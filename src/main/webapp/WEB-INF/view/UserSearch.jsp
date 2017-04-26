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

<body>

<!--Top header -->
<jsp:include page="header.jsp"/>	
 
<div class="gtco-container">

<!--Background Image, Menu Bar -->
	<div class="coverTopSection" height="400px">
		<div class="coverPic" style="width:100% height:80%" valign="top">
			<img src="images/iu6.jpeg" height="280px" >
		</div>
	<jsp:include page="menuBar.jsp"/>	
	</div>
	
	<form action="/advancedSearchUser/${searched_string }" method = "GET">
	
	<button type="submit">Users Only</button>
	</form>

	<form action="/advancedSearchGroup/${searched_string }" method = "GET">
	
	<button type="submit">Groups Only</button>
	</form>	
	

	<div id="section">
		<div class="tile_div" style="position:absolute;  top:555px; left:25%; " align="left" >
		
				<font size="15" color="000000"><b>SEARCH RESULTS</b></font>
		</div>
		
			<c:if test="${fn:length(advanceSearch_user) > 0}">
				<div class="CLubmembership" align="left">


					<c:forEach items="${advanceSearch_user}" var="post">
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
			
			<c:if test="${fn:length(advanceSearch_user) == 0}" >
No results found
</c:if>

	</div>
	</div>
	
	
	<jsp:include page="footer.jsp" />	
</body>
</html>