<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>

<!-- The same menu bar is referenced on every page except the landing, sign up, and password-related pages-->

<style>

input[type=text1] {
    width: 100px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}
input[type=text1]:focus {
    width: 100%;
    float:right;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: rgb(117,0,0);
}

li {
    float: left;
    border-right:1px solid #bbb;
}

li:last-child {
    border-right: none;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: rgb(177,0,0);
}

.active {
    background-color: rgb(210,0,0)
}

</style>

<ul>
  <li><a href="/profile">PROFILE</a></li>
  <li><a href="/editProfile">EDIT PROFILE</a></li>
  <li><a href="/createGroup/">Create Club</a></li>
  <li><a href = "/friends/${user.userId}" method = "GET">MY COLLEGAUES</a></li>
  <li><a href="/seeAllRequest/${user.userId }" method="GET">JOIN REQUESTS</a></li>		
  <li><a href="/messages/${user.userId }">Messages</a></li>
  <li style="float:right">
  <c:if test="${fn:length(friendRequests)} > 0}">	
		<li>
			<form action="/seeAllRequest/${user.userId }" method="GET">
				<button type="submit">Friend Requests
</button>
			</form>
		</li>
	 </c:if>
		<form action="/search" method="get">

			<input type="text1" name="search_value" valign="middle" placeholder="Search..">
<!--  			<button type="submit">Search</button>  -->

		</form>
	</li>
</ul>
