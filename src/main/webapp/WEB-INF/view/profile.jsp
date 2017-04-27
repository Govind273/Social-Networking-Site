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
	<%-- <c:if test="${myProfile eq true }">
	<!-- form to upload background picture -->	
		<form action = "/uploadBackgroundPhoto/${user.userId}" enctype="multipart/form-data" method = "POST">
		<div class="form-group col-lg-6" >
				    <label for="profilePic">Picture</label>
					<input type="file" name="file" >
				</div>
				<button type="submit">Upload</button>
		</form> 

</c:if> --%>

		<!--The Grid -->
		<div class="w3-row">
			<jsp:include page="menuBar.jsp" />
		</div>	
			<!-----------------------Left Column----------------------->
			<div class="w3-col m4">
				<!-- Profile Picture and brief info on user -->
					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<div class="w3-container">
						<p class="w3-center">

						<br>
							<img src="${user.profilePic}" width="200" height="200">

						</p>
						<p>
				<%-- 	<c:if test="${myProfile eq true }">	
						<form action="/uploadProfilePhoto/${user.userId}"
							enctype="multipart/form-data" method="POST">
							<div class="form-group col-lg-6">
								<label for="profilePic">Picture</label> <input
									type="file" name="file">
							</div>
							<button type="submit">Upload</button>
						</form>
						</c:if> --%>
						</p>

						<hr>
						<p>
							<i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i>
							${user.gender}
						</p>
						<p>
							<i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i>
							${user.location}
						</p>
						<p>
							<i
								class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i>
							${user.birthdate}
						</p>
					</div>
				</div>
	<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<br><a href="#" data-toggle="modal" data-target="#mycreateclubModal" >Create Club</a><p></p>
				</div>
				<!-- Clubs -->
					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
						<h3>Club Membership</h3>
						<c:forEach items="${GroupsByMe}" var="admingroups">
				<a href="/groupPage/${admingroups.groupId }/${user.userId }"><p>${admingroups.groupName}*</p></a>
						</c:forEach>
						<c:forEach items="${mygroups}" var="friends">
							<a href="/groupPage/${friends.groupId }/${user.userId }"><p> ${friends.groupName}</p></a>
						</c:forEach>
					</div>
	
			</div>
			
			<!--------------------Middle Column--------------------->
			<div class="w3-col m8">
				<br>
				<!-- Container for name and user briefing -->
				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card-2 w3-round w3-white">
							<div class="w3-container w3-padding">
								<h2>${user.firstName} ${user.lastName}</h2>
								<p>${user.about}</p>
							</div>
						</div>
					</div>
				</div>

					<!-- Edit Life Status -->
					<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
						<div class="w3-container w3-padding">
							<h6 class="w3-opacity">What would you like to share...?</h6>
							<br><div style="padding: 0px 30px 20px 0px">
							<c:if test="${empty user.lifestatus}">
							<label> Life needs a status</label>
							</c:if>
							<c:if test="${not empty user.lifestatus}">
							<label>${user.lifestatus}</label> <br></c:if>
						<c:if test="${myProfile eq true }">	
							<button type="button" data-toggle="modal" data-target="#lifestatusModal">Life Status</button><br> 
						</c:if>
						</div>
					</div>
					</div>
								
				<!-- Education-->
				<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<br>

					<h4>Education</h4>
					<br>
					<c:if test="${myProfile eq true }">	
					<button type="button" data-toggle="modal" data-target="#myeduModal">Add Education Details</button>
					</c:if>
					<c:if test="${fn:length(myEduDetails) > 0}">
					<c:if test="${myProfile eq true }">	
						<button type="button"  data-toggle="modal" data-target="#myedueditModal">Modify Education</button><br> 
						</c:if>
						<c:forEach items="${myEduDetails}" var="myEduDetails">
						
							<table style="border-collapse: separate; border-spacing: 11px;">
							
								<tr>
									<td><label> Education:</label>
									
									<td>${myEduDetails.school}<br></td>
								</tr>
								<tr>
									<td><label>Major:</label></td>
									<td>${myEduDetails.major}<br></td>
								</tr>
								<tr>
									<td><label>Description:</label></td>
									<td>${myEduDetails.description}<br></td>
								</tr>
								<tr>
									<td><label> Skills:</label></td>
									<td>${myEduDetails.skills}<br></td>
								</tr>
							</table>
							<hr>
						</c:forEach>

					</c:if>
					<c:if test="${fn:length(myEduDetails) == 0}">
						<p>User does not have any education experience listed</p>
					</c:if>
				</div>


				<!-- Work Experience-->
				<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<br>

					<h4>Work Experience</h4>
					<br>
					<c:if test="${myProfile eq true }">	
					<button type="button" data-toggle="modal" data-target="#myModal">Add Experience</button>
					</c:if>
					<c:if test="${fn:length(myJobDetails) > 0}">
					<c:if test="${myProfile eq true }">	
						<button type="button"  data-toggle="modal" data-target="#myeditModal">Modify Experience</button><br> 
						</c:if>
						<c:forEach items="${myJobDetails}" var="myJobDetails">
						
							<table style="border-collapse: separate; border-spacing: 11px;">
							
								<tr>
									<td><label> Company:</label>
									<input type="hidden" data-id="company" value="${myJobDetails.company}" name="company"></input></td>
									
									<td>${myJobDetails.company}<br></td>
								</tr>
								<tr>
									<td><label>Position:</label></td>
									<td>${myJobDetails.position}<br></td>
								</tr>
								<tr>
									<td><label>Description:</label></td>
									<td>${myJobDetails.jobDesc}<br></td>
								</tr>
								<tr>
									<td><label> Skills:</label></td>
									<td>${myJobDetails.skills}<br></td>
								</tr>
							</table>
							<hr>
						</c:forEach>

					</c:if>
					<c:if test="${fn:length(myJobDetails) == 0}">
						<p>User does not have any work experience listed</p>
					</c:if>
				</div>
				
	<br>



	<!-- 
	https://www.w3schools.com/bootstrap/tryit.asp?filename=trybs_modal&stacked=h
	 -->

	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add Job Details</h4>
				</div>
				<div class="modal-body">
					<form action="/addJobDetails" method="post">
						<table>
							<tr>
								<td><label>Company </label></td>
								<td><input type="hidden" value="${user.userId}"
									name="userId"> <input type="text" name="company"
									placeholder="company" required/></td>
							</tr>
							<tr>
								<td><label> Position</label></td>
								<td><input type="text" name="position"
									placeholder="position" required /></td>
							</tr>
							<tr>
								<td><label> Description</label></td>
								<td><input type="text" name="jobDesc"
									placeholder="description" required /></td>
							</tr>
							<tr>
								<td><label> Skills</label></td>
								<td><input type="text" name="skills" placeholder="skill" required/>
								</td>
							</tr>
						</table>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-default">Submit</button>
						</div>

					</form>
				</div>

			</div>

		</div>
	</div>
	
	<div id="myeditModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Modify Job Details</h4>
				</div>
				<div class="modal-body">
					
					<c:forEach items="${myJobDetails}" var="myJobDetails">
					
						<table>
						<form action="/editJobDetail"  method="post">
							<tr>
								<td><label> Company:</label></td><td>
									<input type="hidden" value="${myJobDetails.jobdetails_Id}" name="jobdetails_Id">
									<input type="text"  value="${myJobDetails.company}" name="company"></input><br></td>
								</tr>
								<tr>
									<td><label>Position:</label></td>
									<td><input type="text"  value="${myJobDetails.position}" name="position"></input><br></td>
								</tr>
								<tr>
									<td><label>Description:</label></td>
									<td><input type="text"  value="${myJobDetails.jobDesc}" name="jobDesc"></input><br></td>
								</tr>
								<tr>
									<td><label> Skills:</label></td>
									<td><input type="text"  value="${myJobDetails.skills}" name="skills"></input><br></td>
									<td><button type="submit">edit</button>
									<td>
									</form>
							<form action="/deleteJobDetails/${myJobDetails.jobdetails_Id }" method="post">
							<input type="hidden" value="${myJobDetails.jobdetails_Id}" name="jobdetails_Id"></input>
							<button type="submit">delete</button><br> 
							</form>		
				</td>								
								</tr>	
						</table>
						<hr>	
					</c:forEach>
				</div>
			</div>
			
		</div>
	</div>
	<!-- Modal for life status -->
	<div id="lifestatusModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add Your life status</h4>
				</div>
				<div class="modal-body">
					<form action="/updateliftstatus" method="post">
							<input type="hidden"  value="${user.userId}" name="userId">
							<input type="text" width="25%" height="55%" maxlength="150" size="75%" name="lifestatus" placeholder="Whats on your mind?" value="${user.lifestatus}"></input>
							<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-default">Change your Status</button>
						</div>

							</form>
					
				</div>
			</div>
			
		</div>
	</div>
	<!--  Modal to create club-->
	<div id="mycreateclubModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">CREATE CLUBS</h4>
				</div>
				<div class="modal-body">
					<form action="/groupInformation/${user.userId }" method="POST">
		<table>
		<tr><td>
			<label><b>Group Name*: </b></label></td><td> <input type="text"
				placeholder="Group Name" name="groupName" required></td></tr>
				<tr><td> <label><b>Group Description*: </b></label></td>
     <td><input type="text" width="22%" placeholder="About" name="about" required><br></td></tr>
<tr><td>				<label><b>Group Location*: </b></label></td>
			<td><input type="text" width="22%" placeholder="About" name="clubclocation" required><br></td></tr>
<tr><td>			<label><b>Group Email*: </b></label></td>
		<td>	<input type="text" width="22%" placeholder="About" name="clubemail" required><br></td></tr>
			</table>
			<div class="modal-footer">
				<button type="submit" class="btn btn-default">Create</button>
				<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
				</div>
	

	
	</form>
					
				</div>
			</div>
			
		</div>
	</div>
	<!--END  -->
	<!-- Modal for Education Details -->
	<div id="myeduModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add Education Details</h4>
				</div>
				<div class="modal-body">
					<form action="/addEducationDetails" method="post">
						<table>
							<tr>
								<td><label>University </label></td>
								<td><input type="hidden" value="${user.userId}"
									name="userId"> <input type="text" name="school"
									placeholder="What university did you attend?" required/></td>
							</tr>
							<tr>
								<td><label> Major </label></td>
								<td><input type="text" name="major"
									placeholder="What did you major in?" required /></td>
							</tr>
							<tr>
								<td><label> Description</label></td>
								<td><input type="text" name="description"
									placeholder="description" required /></td>
							</tr>
							<tr>
								<td><label> Skills</label></td>
								<td><input type="text" name="skills" placeholder="skills you've accquired" required/>
								</td>
							</tr>
						</table>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-default">Submit</button>
						</div>

					</form>
				</div>

			</div>

		</div>
	</div>
	<!-- Edit job details -->
	<div id="myedueditModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Modify Education Details</h4>
				</div>
				<div class="modal-body">
					
					<c:forEach items="${myEduDetails}" var="myEduDetails">
					
						<table>
						<form action="/editEducationDetail"  method="post">
							<tr>
								<td><label> University:</label></td><td>
									<input type="hidden" value="${myEduDetails.eduDetailsId}" name="eduDetailsId">
									<input type="text"  value="${myEduDetails.school}" name="school"></input><br></td>
								</tr>
								<tr>
									<td><label>Major:</label></td>
									<td><input type="text"  value="${myEduDetails.major}" name="major"></input><br></td>
								</tr>
								<tr>
									<td><label>Description:</label></td>
									<td><input type="text"  value="${myEduDetails.description}" name="description"></input><br></td>
								</tr>
								<tr>
									<td><label> Skills:</label></td>
									<td><input type="text"  value="${myEduDetails.skills}" name="skills"></input><br></td>
									<td><button type="submit">edit</button>
									<td>
									</form>
							<form action="/deleteEducationDetails/${myEduDetails.eduDetailsId }" method="post">
							<input type="hidden" value="${myEduDetails.eduDetailsId}" name="eduDetailsId"></input>
							<button type="submit">delete</button><br> 
							</form>		
								</td>								
								</tr>	
						</table>
						<hr>	
					</c:forEach>
				</div>
			</div>
			
		</div>
	</div>
	</div>
	</div>
		<jsp:include page="footer.jsp" />
</body>
</html>
	
