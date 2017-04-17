<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- The same menu bar is referenced on every page except the landing, sign up, and password-related pages-->

<div id="navfirst" style="width: 100% height:20%" valign="bottom">
	<a id="home" class="homebutton" href="/profile"
		style="width: 30px; height =100%; position: absolute; left: 20px; background: rgb(117,0,0); top: 420px">
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
