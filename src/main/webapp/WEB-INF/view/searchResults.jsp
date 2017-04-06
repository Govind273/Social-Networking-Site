<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/index.css">
	<!-- <script src="/js/datatable.js"></script> -->
	
</head>

<div id="header1" style="height:72px;">	
		<div align="right" style="padding:20px">
			<ul>
			<li id="logout">
			<a href="/logout" title="Logout">Logout</a>
			</li>
		<li id="home">
		<a  href="/profile" title="home">  
					<img src="images/home.jpg">
			</a>
			</li>
			</ul>
		</div>
		
</div>
 
<div class="gtco-container">
	<div class="coverTopSection" >
		<div id="navfirst" style="width:100% height:20%" valign="bottom">
				
			<ul id="menu">
				
				<li id="editProfile">
					<a href="/editProfile" title="Edit" type="submit" >Edit Profile</a>
				</li>
				<li id="ch">
					<a href="#" title="chat">Club Chat</a>
				</li>
			</ul>   
			<div class="search" align="right">
				<form action="/searchGroup" method="post">
  					<input type="text" name="groupName" placeholder="Search.." >
  					<button type="submit">Search</button>
				</form>			
			</div>
		</div>
	</div>
	</div>
	
	<h1>Search Results</h1>
	<table class="display" border="2px">
	<thead>
	<tr>
	<th width="100px"><b>group Name</b></th><th width="200px"><b>About</b></th><th width="100px"></th>
	</tr>
	</thead>
	<tbody>
      <c:forEach var="group" items="${group}">
       <!-- Header Table -->
            <tr> 	
				<td >${group.groupName}</td>
                <td>${group.about}</td>
                <td>
                <br>
                <form action="/searchGroupData" method="POST">
                <input type="hidden" name="groupId" value="${group.groupId }"></input>
                <button type="submit">View Group </button>
                </form> 
                <br>
                <form >
                <button type="submit">Join Group </button>
                </form><br>
                </td>
            </tr>
     
        <!-- Footer Table -->
        </c:forEach>
        
        </tbody>
    </table>
    
</body>
	