<html  xmlns:th="http://www.thymeleaf.org">
<body >
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" href="/css/style.css">
<script>

window.onbeforeunload = function() {
	sessionStorage.setItem(groupId, $('#groupId').val());
}
window.onload = function() {
var groupId=sessionStorage.getItem('groupId');
}
$( document ).ready(function() {
	
	var url = window.location;
	
	// GET REQUEST
	$("#getBtn").click(function(event){
		event.preventDefault();
		ajaxGet();
	});
	
	// DO GET
	function ajaxGet(){
		$.ajax({
			type : "GET",
			url : url + "/getAllPosts/groupId",
			async: true,
			success: function(result){
				if(result.status == "Done"){
					$('#getResultDiv .list-group li').remove();
					var custList = "";
					$.each(result.data, function(i, post){
						var post = ": PostBy=" + post.postedBy + " ,PostDesc=" + post.postDesc + "<br\>";
						$('#getResultDiv .list-group').append('<li><h4 class="list-group-item">'+PostDesc+'</h4></li>')
			        });
					console.log("Success: ", result);
				}else{
					$("#getResultDiv").html("<strong>Error</strong>");
					console.log("Fail: ", result);
				}
			},
			error : function(e) {
				$("#getResultDiv").html("<strong>Error</strong>");
				console.log("ERROR: ", e);
			}
		});	
	}
})


</script>

</head>
<div id="header1" style="height:72px;">
		<div class="iulogo" style="float:left; width:50%; height:50px;" align="left">
		<img src="/images/2.png" width="65" height="56" >
		</div>
		<div align="right" style="padding:20px">
			<li id="logout">
			<a href="/logout" title="Logout">Logout</a>
		</li>
		</div>

 
<div class="gtco-container">
	<div class="coverTopSection" height="400px">
		<div class="coverPic" style="width:100% height:80%" valign="top">
			<img src="images/iu6.jpeg" height="280px" >
		</div>
		<div id="navfirst" style="width:100% height:20%" valign="bottom">
			<a id="home" class="homebutton" href="profile" style="width:30px; height=100%; position:absolute; left:20px; background:#FFFFFF; top:420px;  border:#000 solid 1px;no-repeat;">
				<img src="/images/home.jpg">
			</a>
			<ul id="menu">
				<li id="editProfile">
					<a href="/editProfile" title="Edit" type="submit" >Edit Profile</a>
				</li>
				<li id="Join">
					<form action="/requestGroup/${user.userId}/${groupSearched.groupId}" method = "POST">
					<button type="submit">Join</button>
					</form>
				</li>

			</ul>   


			<div class="search" align="right">
				<form action="/search" method="post">
  					<input type="text" name="groupName" placeholder="Search.." >
  					<button type="submit">Search</button>
				</form>			
			</div>
		</div>
	</div>
	<div id="nav">
<!--		<div class="CLubmembership" align="middle" heightÃ¯Â¼Â"400px"><p2>Club Menbership</p2></div>     -->
		<div >
			<img src="images/2.png" width="170" height="120" style="position:absolute; left:80px; top:480px; border:#000 solid 1px;">
			
		</div>
		<!-- class="nav-main" Commented by vishi-->
		<div  style="top:250px">

		</div>
	</div>  



	<div id="section">
		<div class="tile_div" style="position:absolute;  top:555px; left:280px; " align="middle" >
				<font size="15" color="000000"><b>${groupSearched.groupName}</b></font>
		</div>
	
		
		<div class="CLubmembership" align="middle">
                <font href="#" class="light">${groupSearched.about}</font>
				<form>
				</form>
		</div>

	<div id="section1">
		
<form action="/requestgroup/${user.userId }/${group.groupId}" method = "POST">
	<button type = "submit">Join</button>
	
	</form>

	   <form action="/createPost/${groupSearched.groupId }/${user.userId }"  method="POST" class="form-inline" align="left">
                	

                	<div class="posts_div" align="center" valign="middle">
                        <label><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Club Posts</b></label>
                        
						<input type="hidden" name="groupId" value="${groupSearched.groupId }">
                        <input type="text" placeholder="posts" name="postDesc"  class="mytext" maxlength="150" required>
                         <button type="submit" class="btn btn-default btn-block"> Post</button>
                    </div>
         </form>
                <h2>Recent Posts</h2>
				<button id="getBtn">get posts</button>
                

	</div>
	<div class="userpost" align="middle" width="841px">
		<font href="#" class="light"></font>
	</div>


                <h1>${postDesc }<h1>
</div>

</div>
</div>
</html>
