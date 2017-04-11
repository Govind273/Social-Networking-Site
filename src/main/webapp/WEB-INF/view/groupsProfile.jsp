<html  xmlns:th="http://www.thymeleaf.org">
<body bgcolor="#FFFFFF">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" href="/css/style.css">

</head>
<div id="header1" style="height:72px;">
		<div class="iulogo" style="float:left; width:50%; height:50px;" align="left">
		<img src="images/2.png" width="65" height="56" >
		</div>
		<div align="right" style="padding:20px">
			<li id="logout">
			<a href="/logout" title="Logout">Logout</a>
		</li>
		</div>

 
<div class="gtco-container">
	<div class="coverTopSection" height="400px">
		<div class="coverPic" style="width:100% height:80%" valign="top">
			<img src="images/iu4.jpeg" height="280px" >
		</div>
		<div id="navfirst" style="width:100% height:20%" valign="bottom">
			<a id="home" class="homebutton" href="profile.jsp" style="width:30px; height=100%; position:absolute; left:20px; background:#FFFFFF; top:420px;  border:#000 solid 1px;no-repeat;">
				<img src="images/home.jpg">
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
				<form action="/searchGroup" method="post">
  					----${group.groupId}----
  					<input type="text" name="groupName" placeholder="Search.." >
  					<button type="submit">Search</button>
				</form>			
			</div>
		</div>
	</div>
	<div id="nav">
<!--		<div class="CLubmembership" align="middle" heightï¼"400px"><p2>Club Menbership</p2></div>     -->
		<div >
			<img src="images/2.png" width="170" height="120" style="position:absolute; left:80px; top:480px; border:#000 solid 1px;">
			
		</div>
		<!-- class="nav-main" Commented by vishi-->
		<div  style="top:250px">

		</div>
	</div>  



	<div id="section8">
		<div class="tile_div" id="username" style="position:absolute;  top:555px; left:280px; " align="middle" >
				<font size="15" color="000000">${searchGroup.groupName}</font>
		</div>
	
	

		
		<div class="CLubmembership" align="middle">

                <font href="#" class="light">${searchGroup.about}</font>


                <!--  <a >${searchGroup.groupId }</a>-->

		</div>
<<<<<<< Updated upstream


	
	<div id="section1">
		


	   <form action="/createPost/${searchGroup.groupId }/${user.userId }"  method="POST" class="form-inline" align="left">

    <!-- <form action="/createPost/"  method="POST" class="form-inline" align="left">-->
                	

=======
	</div>
	
	<form action="/requestgroup/${user.userId }/${group.groupId}" method = "POST">
	<button type = "submit">Join</button>
	
	</form>
	 <form action="/createPost/${group.group_id}"  method="POST" class="form-inline" align="left">
>>>>>>> Stashed changes
                	<div class="posts_div" align="center" valign="middle">
                        <label><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Club Posts</b></label>
                        <input type="text" placeholder="posts" name="postDesc"  class="mytext" maxlength="150" required>
                         <button type="submit" class="btn btn-default btn-block"> Post</button>
                    </div>
         </form>
                <h2>Recent Posts</h2>

                <a href=â#â th:each=âp:${latestposts}â th:text=â${p.title}â th:href=â@{/posts/view/{id}/(id=${p.id})}â>
</a>
<<<<<<< Updated upstream

	</div>
	<div class="userpost" align="middle" width="841px">
		<font href="#" class="light"></font>
	</div>


                <h1>${postDesc }<h1>

<!--
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$(function(){
	var thisTime;
	$('.nav-ul li').mouseleave(function(even){
			thisTime	=	setTimeout(thisMouseOut,1000);
	})
=======
>>>>>>> Stashed changes

   

</div>
<<<<<<< Updated upstream
=======

<!--<iframe src="signup.html" width="100%" height="100%"></iframe>-->
>>>>>>> Stashed changes
<link rel="stylesheet" href="css/style.css">

