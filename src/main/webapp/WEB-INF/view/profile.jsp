<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	
	 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
  max-width:1400px;
  top: 0;
  left: 0;
}
</style>
<body class="w3-theme-l5">

	<!-- ********************Header, Cover Photo, Menu Bar******************** -->
	<jsp:include page="header.jsp" />



	<!-- ********************Page Container******************** -->
	<div class="w3-container w3-content"
		style="max-width: 1400px">




		<!--Background Image, Menu Bar -->
		<div class="cover">

			<img src="${user.profilePic}">
		</div>
		<%-- Commented by Vaishnavi as moved this block of code to the edit page--%>
		<form action = "/uploadProfilePhoto/${user.userId}" enctype="multipart/form-data" method = "POST">
		<div class="form-group col-lg-6" >
				    <label for="profilePic">Upload Your Profile Picture</label>
					<input type="file" name="file" >
				</div>
				<button type="submit">Upload</button>
		</form> 

		
		<!--********** The Grid ***********-->
		<div class="w3-row">
<jsp:include page="menuBar.jsp" />
			<!-- **********Left Column********** -->
			<div class="w3-col m3">
				<br>
				<!-- Profile Picture and brief info on user -->
				<div class="w3-card-2 w3-round w3-white">
					<div class="w3-container">
						<p class="w3-center">
							<img src="images/2.png" width="170" height="170">
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
				<br>

				<!-- Clubs -->
				<div class="w3-card-2 w3-round w3-white w3-hide-small">
					<div class="w3-container">
					<h3>Club Membership</h3>
					<c:forEach items="${GroupsByMe}" var="admingroups">
					<p>${admingroups.groupName} *</p>
					</c:forEach>
					<c:forEach items="${myFriends}" var="friends">
						<p> ${friends.groupName}</p>
						
						<!-- <p>Karun Fan Club</p>
						<p>Data Science Club</p>
						<p>We Love Vandana Club</p> 
						</p>-->
						</c:forEach>
					
					</div>
				</div>

				<!-- **********End Left Column********** -->
			</div>
			<!-- **********Middle Column********** -->
			<div class="w3-col m7">
				<br>
				<!-- Container for name and user briefing -->
				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card-2 w3-round w3-white">
							<div class="w3-container w3-padding">
								<h2>${user.firstName}${user.lastName}</h2>
								<p>${user.about}</p>
							</div>
						</div>
					</div>
				</div>

								<!-- Education-->
				<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<br>
					
					<h4>Education</h4> <br>
					<button type="button"  data-toggle="modal" data-target="#myModal">add</button>
					
					<c:if test="${fn:length(myJobDetails) > 0}"><!-- 
					<button type="button"  data-toggle="modal" data-target="#myeditModal">edit</button><br> -->
					<c:forEach items="${myJobDetails}" var="jobs">
					<table style=" border-collapse: separate;   border-spacing: 11px;">
					<tr><td><label> Company:</label></td>
				<td>	${jobs.company}<br></td></tr>
					<tr><td><label>Position:</label></td>
				<td>	${jobs.position}:<br></td></tr>
					<tr><td><label>Description:</label></td>
					<td>${jobs.jobDesc}<br></td></tr>
					<tr><td><label> Skills:</label></td>
					<td>${jobs.skills}<br></td><tr>
					</table>
					<hr>
					</c:forEach>
					
					</c:if>
					<c:if test="${fn:length(myJobDetails) == 0}">
					<p>User does not have any work experience listed</p> 
						</c:if>
				</div>
				
				
				<!-- Work Experience-->
				<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<br>
					
					<h4>Work Experience</h4> <br>
					<button type="button"  data-toggle="modal" data-target="#myModal">add</button>
					
					<c:if test="${fn:length(myJobDetails) > 0}"><!-- 
					<button type="button"  data-toggle="modal" data-target="#myeditModal">edit</button><br> -->
					<c:forEach items="${myJobDetails}" var="jobs">
					<table style=" border-collapse: separate;   border-spacing: 11px;">
					<tr><td><label> Company:</label></td>
				<td>	${jobs.company}<br></td></tr>
					<tr><td><label>Position:</label></td>
				<td>	${jobs.position}:<br></td></tr>
					<tr><td><label>Description:</label></td>
					<td>${jobs.jobDesc}<br></td></tr>
					<tr><td><label> Skills:</label></td>
					<td>${jobs.skills}<br></td><tr>
					</table>
					<hr>
					</c:forEach>
					
					</c:if>
					<c:if test="${fn:length(myJobDetails) == 0}">
					<p>User does not have any work experience listed</p> 
						</c:if>
				</div>
				

				

				<!-- **********End Middle Column********** -->
			</div>
			<!-- **********Right Column********** -->
			<div class="w3-col m2">
				<br>
				<!-- Colleague Requests -->
				<div class="w3-card-2 w3-round w3-white w3-center">
					<div class="w3-container">
						<p>Friend Request</p>
						<img src="/w3images/avatar6.png" alt="Avatar" style="width: 50%"><br>
						<span>Jane Doe</span>
						<div class="w3-row w3-opacity">
							<div class="w3-half">
								<button class="w3-button w3-block w3-green w3-section"
									title="Accept">
									<i class="fa fa-check"></i>
								</button>
							</div>
							<div class="w3-half">
								<button class="w3-button w3-block w3-red w3-section"
									title="Decline">
									<i class="fa fa-remove"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<br>

				<!-- Ads -->
				<div class="w3-card-2 w3-round w3-white w3-padding-16 w3-center">
					<p>ADS</p>
				</div>
				<br>

				<!--********** End Right Column **********-->
			</div>
			<!--********** End Grid **********-->
		</div>
		<!--********** End Page Container **********-->
	</div>

	<br>


	<jsp:include page="footer.jsp" />
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
        <form action="addJobDetails" method="post">
        <table>
        <tr>
       <td> <label>Company </label></td>
      <td>  <input type="hidden" value="${user.userId}" name="userId">
        <input type="text" name="company" placeholder="coompany"/></td>
      </tr>
      <tr>
      <td>  <label> Position</label>       </td>
     <td>   <input type="text" name="position" placeholder="position"/></td>
       </tr>
       <tr> 
     <td>   <label> Description</label> </td>
     <td>   <input type="text" name="jobDesc" placeholder="description"/> </td>
        </tr>
        <tr>
     <td>   <label> Skills</label></td>
   <td>     <input type="text" name="skills" placeholder="skill"/> </td>
        </tr>
        </table>
         <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>     
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
        <h4 class="modal-title">Edit Job Details</h4>
      </div>
      <div class="modal-body">
        <form action="/editJobDetails" method="post">
        <c:forEach items="${myJobDetails}" var="jobs">
        <table style=" border-collapse: separate;   border-spacing: 11px;">
        
        <tr>
       <td> <label>Company </label></td>
      <td>  <input type="hidden" value="${user.userId}" name="userId">
        <input type="text" name="company" value="${jobs.company}" placeholder="coompany"/></td>
      </tr>
      <tr>
      <td>  <label> Position</label>       </td>
     <td>   <input type="text" name="position" value="${jobs.position}" placeholder="position"/></td>
       </tr>
       <tr> 
     <td>   <label> Description</label> </td>
     <td>   <input type="text" name="jobDesc" value="${jobs.jobDesc}" placeholder="description"/> </td>
        </tr>
        <tr>
     <td>   <label> Skills</label></td>
   <td>     <input type="text" name="skills" value="${jobs.skills}" placeholder="skill"/> </td>
        </tr>
        
        </table>
        </c:forEach>
         <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>     
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
      
        </form>
      </div>
     
    </div>

  </div>
</div>
</body>
</html>
