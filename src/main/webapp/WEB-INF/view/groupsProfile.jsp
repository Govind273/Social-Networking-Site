<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" href="/css/style.css">
<script type="text/javascript" src="/js/jquerygroupsProfile.js""></script>
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
</style>

</head>

<body>

	<!--Top header -->
	<jsp:include page="header.jsp" />

	<div class="gtco-container">

		<!--Background Image, Menu Bar -->
		<div class="coverTopSection" height="400px">
			<div class="coverPic" style="width: 100% height:80%" valign="top">
				<img src="images/iu6.jpeg" height="280px">
			</div>
			<jsp:include page="menuBar.jsp" />
		</div>


		<div id="navGroupPage">
			<!--		<div class="CLubmembership" align="middle" heightÃÂÃÂÃÂÃÂ¯ÃÂÃÂÃÂÃÂ¼ÃÂÃÂÃÂÃÂ"400px"><p2>Club Menbership</p2></div>     -->
			<div>
				<img src="/images/2.png" width="170" height="120"
					style="position: absolute; left: 80px; top: 480px; border: #000 solid 1px;">

			</div>
			<!-- class="nav-main" Commented by vishi-->
			<div style="top: 250px"></div>
			<c:forEach items="${membersList}" var="ml">
				<b>members></b>
				<div class="form-group col-lg-6">
					<label for="memberName"
						style="margin-top: 15%; font-size: 20px; left: 20%">
						${memberName.userId}<br>
					</label>
				</div>




			</c:forEach>

		</div>



		<div id="section">
			<div class="tile_div"
				style="position: absolute; top: 555px; left: 280px;" align="middle">
				<font size="15" color="000000"><b>${groupSearched.groupName}</b></font>
			</div>


			<div class="CLubmembership" align="middle">
				<font href="#" class="light">${groupSearched.about}</font>
				<form></form>
			</div>



			<div class="posts_div" align="left" valign="middle">

				<form action="/createPost/${groupSearched.groupId }/${user.userId }"
					method="POST" class="form-inline" align="left">


					<label><b>Club Posts</b></label> <input type="hidden"
						name="groupId" id="groupId" value="${groupSearched.groupId }">
					<input type="text" placeholder="posts" name="postDesc" width="25%"
						height="25%" maxlength="150" required>
					<button type="submit" class="btn btn-default btn-block">
						Post</button>

				</form>

				<%--  <form action="/getallposts/${groupSearched.groupId }" method="get">
                
				<button type="submit"  class="btn btn-default btn-block" id="getBtn">get posts</button>
                </form>
                 --%>
				
				<c:if test="${fn:length(ps) > 0}">
				
				
					<th><h2>Recent Posts</h2></th>
					
    						<div >${message}</div>
						
					<table style="width: 100%" border="2">
						
						<c:forEach items="${ps}" var="post">
							<tr>
								<td class="td"><label for="PostBy"
									style="margin-top: 15%; font-size: 20px; left: 20%; align: left">
										${post.postDesc}</label> <br> <label for="PostBy"
									style="margin-top: 15%; font-size: 20px"><B> </B>
										${post.postedDatetime} </label> <%-- <b> ${post.postId}</b> --%></td>
<!-- 								DELETE FUNCTIONALITY:TO IMPLEMENT
 -->
 <td>
 <form action = "/deletePost/${post.postId }/${user.userId }/${groupSearched.groupId }" method="post">

<!-- style="width:30px; height=100%; position:absolute; left:20px; background:#FFFFFF; top:420px;  border:#000 solid 1px;no-repeat;"/>
 -->			<button type="submit"> <img  src="/images/deleteicon.png"> </button>
</form>
</td> 
							</tr>
						</c:forEach>


					</table>
				</c:if>
				<c:if test="${fn:length(ps) == 0}">
					<p>No posts</p>
				</c:if>
			</div>
		</div>

	</div>

	</div>
	</div>
</html>
