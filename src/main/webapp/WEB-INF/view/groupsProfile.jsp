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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
	max-width: 1100px;
	top: 0;
	left: 0;
}
</style>


<!------------------------------------------------------------------------------Body------------------------------------------------------------------------------->
<body class="w3-theme-l5">

	<!---------------------------------------Header, Container, Cover Photo, Menu Bar--------------------------------------->
	<jsp:include page="header.jsp" />

	<!-- Page Container -->
	<div class="w3-container w3-content" style="max-width: 1100px">

		<!--Background Image, Menu Bar -->
		<div class="cover">
			<img src="${groupSearched.backgroundPic }">
		</div>
	
		<c:if test="${isadmin eq true }">
		<!-- form to upload background picture -->	
		<form action = "/uploadGroupBackgroundPhoto/${groupSearched.groupId}/${user.userId}" enctype="multipart/form-data" method = "POST">
		<div class="form-group col-lg-6" >
				    <label for="profilePic">Picture</label>
					<input type="file" name="file" >
				</div>
				<button type="submit">Upload</button>
		</form>
</c:if>
	<!-- form ends here -->	

		<!--The Grid-->
		<div class="w3-row">
			<jsp:include page="menuBar.jsp" />

			<!-------------------Left Column------------------->
			<div class="w3-col m4">
				<br>

				<!-- Profile Picture and brief info on club-->
				<div class="w3-card-2 w3-round w3-white">
					<div class="w3-container">
						<p class="w3-center">
							<img src="${groupSearched.profilePic }" width="190" height="170">
						</p>
						<p>
						<c:if test="${isadmin eq true }">
						<form action="/uploadGroupProfilePhoto/${groupSearched.groupId}/${user.userId}"
							enctype="multipart/form-data" method="POST">
							<div class="form-group col-lg-6">
								<label for="profilePic">Picture</label> <input
									type="file" name="file">
							</div>
							<button type="submit">Upload</button>
						</form>
						</c:if>
						
						<hr>
						<p>
							<i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i>
							${groupSearched.clubemail}
						</p>
						<p>
							<i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i>
							${groupSearched.clubclocation}
						</p>
						<p>
							<i
								class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i>
							${groupSearched.clubstartdate}
						</p>
					</div>
				</div>
				<br>
				<c:if test="${isadmin eq true }">
				<div class="w3-card-2 w3-round w3-white w3-hide-small">
						<div class="w3-container">
						<label style="margin-top: 2%; font-size: 20px; left: 20%">
					<a href="#" data-toggle="modal" data-target="#myeditclubModal" >Edit Club</a>
					</label>
					<br>
					</div>
					</div>
		</c:if>	
		<c:if test="${fn:length(groupmember) == 0}">
		<div class="w3-card-2 w3-round w3-white w3-hide-small">
					<div class="w3-container">
					<form action = "/requestGroup/${user.userId }/${groupSearched.groupId }" method="post">
			<button type="submit"> Join </button>
			</form>
					</div>
					</div>
		</c:if>
				<br>
			<c:if test="${fn:length(groupmember) > 0 or isadmin eq true}">
				<!-- Members List -->
				<div class="w3-card-2 w3-round w3-white w3-hide-small">
					<div class="w3-container">
						<h3>Members</h3>
						<c:forEach items="${membersList}" var="ml">
							<label style="margin-top: 5%; font-size: 20px; left: 20%">
								<a href="/goToProfile/${ml.userId }" >${ml.firstName} ${ml.lastName}</a><br>
							</label>
						</c:forEach>
					</div>
				</div>
				<c:if test="${fn:length(membersList) == 0}">
				No one's a part of your group
				</c:if>
				</c:if>
				
			</div>

			<!-------------------Middle Column------------------->
			<div class="w3-col m8">
				<br>
				<!-- Container for club name and briefing -->
				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card-2 w3-round w3-white">
							<div class="w3-container w3-padding">
								<h2>${groupSearched.groupName}</h2>
								<p>${groupSearched.about}</p>
							</div>
						</div>
					</div>
				</div>

				<!-- The following appears only to club members -->
				<c:if test="${fn:length(groupmember) > 0 or isadmin eq true}">
					<!-- Make a new Post -->
					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
						<div class="w3-container w3-padding">
							<h6 class="w3-opacity">What would you like to share?</h6>
							<div style="padding: 0px 30px 20px 0px">
						<form action="/createPost/${groupSearched.groupId }/${user.userId }/${user.firstName }/${user.lastName }" method="POST" class="form-inline" align="left">
								<input type="hidden" name="groupId" id="groupId"
									value="${groupSearched.groupId }"> 
								<input type="text"
									placeholder="posts" name="postDesc" width="25%" height="55%"
									maxlength="100" size="60%" required/>
								<button type="submit" class="w3-button w3-theme">
									<i class="fa fa-pencil"></i> Post
								</button>
							</form>
							</div>
						</div>
					</div>

					<!-- See existing posts, in reverse chrono order -->
					<c:if test="${fn:length(ps) > 0}">
					${message.message}
						<c:forEach items="${ps}" var="post">
			
							<!-- Creates new container for each post on club all -->
							<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
								<br> <span class="w3-right w3-opacity">${post.postedDatetime}</span>
								
								<h6 class="w3-opacity"><a href="/goToProfile/${post.postedby }" >${post.postbyname}</a></h6>
								<hr class="w3-clear">
								<div>${post.postDesc}</div>
								<br>

								<button type="button"
									class="w3-button w3-theme-d1 w3-margin-bottom">
									<i class="fa fa-thumbs-up"></i> Like
								</button>
								<form action="/deletePost/${post.postId }/${user.userId }/${groupSearched.groupId }"
									method="post">
								<button type="submit"
									class="w3-button w3-theme-d2 w3-margin-bottom">
									<i class="fa fa-delete"></i> Delete
								</button>
		</form>
								
							</div>

						</c:forEach>
					</c:if>
					<c:if test="${fn:length(ps) == 0}">
					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
						<p>No posts</p>
						</div>
					</c:if>
				</c:if>
			</div>
			</div>
							</div>
				<jsp:include page="footer.jsp" />
				<div id="myeditclubModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">EDIT CLUBS</h4>
				</div>
				<div class="modal-body">
					<form action="/editGroupDetails/${user.userId }" method="POST">
		<table>
		<tr><td>
			<label><b>Group Name*: </b></label></td> 
			<td><input type="hidden" name="groupId" value="${groupSearched.groupId }">
			<input type="text"
				placeholder="Group Name" name="groupName" value="${groupSearched.groupName }"required></td></tr>
				<tr><td>
				<label><b>Group Description*: </b></label></td>
		<td><input type="text" width="22%" placeholder="About" value="${groupSearched.about }" name="about" required><br></td></tr>
			<tr><td><label><b>Group Location*: </b></label></td>
			<td><input type="text" width="22%" placeholder="clubclocation" value="${groupSearched.clubclocation }" name="clubclocation" required><br></td></tr>
			<tr><td>
			<label><b>Group Email*: </b></label></td>
			<td><input type="text" width="22%" placeholder="club email" value="${groupSearched.clubemail }" name="clubemail" required><br></td></tr>
			</table>
			<div class="modal-footer">
				<button type="submit" class="btn btn-default">EDIT</button>
				<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
				</div>	
	</form>
				</div>
			</div>
			
		</div>
	</div>
				<!-- END -->
</body>
</html>
