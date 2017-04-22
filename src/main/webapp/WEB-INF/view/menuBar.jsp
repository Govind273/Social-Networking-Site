<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
    folat:right;
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
  <li><a href="/profile">Profile</a></li>
  <li><a href="/editProfile">Edit Profile</a></li>
  <li><a href="/createGroup/">Create Club</a></li>
  <li><a href="/FriendRequests/">Colleague Request</a></li>
  <li style="float:right">
		<form action="/search" method="get">
			<input type="text1" name="groupName" valign="middle" placeholder="Search..">
<!--  			<button type="submit">Search</button>  -->
		</form>
	</li>
</ul>


<!-- THE WORKING CODE as of 4/17, 11am
<div id="navfirst" style="width: 100% height:20%" valign="bottom">
	<a id="home" class="homebutton" href="/profile"
		style="width: 30px; height =100%; position: absolute; left: 20px; top: 420px">
		<img src="/images/home.jpg">
	</a>
	
	<ul id="menu">
		<li>
			<form action="/seeAllRequest/${user.userId }" method="GET">
				<button type="submit">Friend Requests</button>

			</form>
		</li>

		<li>
			<form action="/createGroup/" method="GET">
				<button type="submit">Create</button>
			</form>
		</li>
		<li id="editProfile"><a href="/editProfile" title="Edit"
			type="submit">Edit Profile</a></li>
		<li id="ch"><a href="#" title="chat">Club Chat</a></li>
	</ul>

	<div class="search" align="right">
		<form action="/search" method="get">
			<input type="text" name="groupName" placeholder="Search..">
			<button type="submit">Search</button>
		</form>
	</div>
</div>
 -->
 
 
<!--	
			<a id="home" class="homebutton" href="profile.jsp"
				style="width: 30px; height =100%; position: absolute; left: 20px; background: #FFFFFF; top: 420px;">
				<img src="/images/home.jpg">
			</a>

<div id="navfirst" style="width: 100% height:20%" valign="bottom">
	<a id="home" class="homebutton" href="profile.jsp"
		style="width: 30px; height =100%; position: absolute; left: 20px; background: #FFFFFF; top: 420px;">
		<img src="/images/home.jpg">
	</a>
	<ul id="menu" width="70%" align="right">

		<li>
			<form action="/seeAllRequest/${user.userId }" method="GET">
				<button type="submit">Friend Requests</button>

			</form>
		</li>

		<li>
			<form action="/createGroup/" method="GET">
				<button type="submit">Create</button>
			</form>
		</li>
		<li id="editProfile"><a href="/editProfile" title="Edit"
			type="submit">Edit Profile</a></li>
		<li id="ch"><a href="#" title="chat">Club Chat</a></li>

	</ul>
	<div class="search" align="right">
		<form action="/search" method="get">
			<input type="text" name="groupName" placeholder="Search..">
			<button type="submit">Search</button>
		</form>
	</div>
</div>
	
<div id="navfirst" style="width:100% height:20%" valign="bottom">
			<a id="home" class="homebutton" href="profile" style="width:30px; height=100%; position:absolute; left:20px; background:#FFFFFF; top:420px;  border:#000 solid 1px;no-repeat;">
				<img src="/images/home.jpg">
			</a>
			<ul id="menu">
				<li id="editProfile">
					<a href="/editProfile" title="Edit" type="submit" >Edit Profile</a>
				</li>
				<li id="ch">
					<a href="#" title="chat">Club Chat</a>
				</li>

			</ul>   


			<div class="search" align="right">
				<form action="/search" method="get">
  					<input type="text" name="groupName" placeholder="Search.." >
  					<button type="submit">Search</button>
				</form>			
			</div>
		</div> 		  -->




<!--  
	  <form>
	  	<input type="text" name="search" placeholder="Search..">
	  </form></li>
	   -->