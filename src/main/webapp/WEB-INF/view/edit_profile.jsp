<!DOCTYPE html>
<html>
<style>
    /* Full-width input fields */
    input[type=text], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    /* Set a style for all buttons */
    button {
        background-color: #750000;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }

    /* Extra styles for the cancel button */
    .cancelbtn {
        padding: 14px 20px;
        background-color: #750000;
    }

    /* Float cancel and signup buttons and add an equal width */
    .cancelbtn,.signupbtn {
        float: left;
        width: 50%;
    }

    /* Add padding to container elements */
    .container {
        padding: 16px;
    }

    /* Clear floats */
    .clearfix::after {
        content: "";
        clear: both;
        display: table;
    }

    /* Change styles for cancel button and signup button on extra small screens */
    @media screen and (max-width: 300px) {
        .cancelbtn, .signupbtn {
            width: 100%;
        }
    }
</style>
<body>
<div id="header1" style="height:72px;">
		<div class="iulogo" style="float:left; width:50%; height:50px;" align="left">
		<img src="images/2.png" width="65" height="56" >
		</div>
		<div align="right" style="padding:20px">
			<li id="logout">
			<a href="/logout" title="Logout"><font color = " #ffffff">Logout</font></a>
		</li>
		</div>
</div>

<!-- <div id="navfirst" style="width:100% height:20%" valign="top">
	<a id="home" class="homebutton" href="profile.jsp" style="width:30px; height=100%; position:absolute; left:0px; background:#FFFFFF; top:99px;   solid 1px;no-repeat;">
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
  					<input type="text" name="groupName" placeholder="Search.." >
  					<button type="submit">Search</button>
				</form>			
			</div>
		</div>
 


-->
<form action="/updateProfile"  method="POST">
    <label><b>email</b></label>
    <input type="text"  name="emailId" value="${user.emailId}" required readonly>

<label><b>First Name</b></label>
<input type="text"  name="firstName" value="${user.firstName}" required>

    <label><b>last Name</b></label>
    <input type="text"  name="lastName" value="${user.lastName}" required>

    <label><b>Password</b></label>
    <input type="password"  name="password" value="${user.password}" required>

    <label><b>About</b></label>
    <input type="text"  name="about" value="${user.about}" required>


<button type="submit" class="button" >Edit</button>
<button class="button"><a href="/profile" ><font color = " #ffffff"> Cancel </font></a> </button>
	



<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" href="css/style.css">
</form>

</body>
</html>
