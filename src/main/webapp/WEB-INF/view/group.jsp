<!-- PAGE NEEDS HEADER AND MENU BAR UDATES BUT NOT MADE -->

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" href="/css/style.css">
</head>

<!-- Commented out by Nick on 4/16 as we're setting up a proper central css
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
        padding: 8px 0;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }
    
    button1 {
    top:20%;
   width: 100px;
    height: 28px;
    line-height: 28px;
    background: red;
    color: #FFF;
    margin: 5px 10px;
    font-size: 12px;
    display: block;
    text-align: center;
    text-decoration: none;
    }
    input[type=text1]{
        color: white;
       position:absolute;
       right: 15%;
        margin: 8px 0;  
        cursor: pointer;
        width: 20%;
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
 -->
 
<body>
<!--Top header -->
<jsp:include page="header.jsp"/>	
 
<div class="gtco-container">

<!--Background Image, Menu Bar -->
<div class="coverTopSection" height="400px">
	<div class="coverPic" style="width:100% height:80%" valign="top">
		<img src="images/iu6.jpeg" height="280px" >
	</div>
	<jsp:include page="menuBar.jsp"/>	
</div>
	
	
	<div id="nav">
<div id="section" width="550%">

<div class="tile_div" id="username" style="position:absolute;  top:555px;" style="position:absolute; left:80px; top: 230px;" align="middle">
		<label><h4> <b>Group Information</b></h4></label>
		</div>

	<div class="CLubmembership" align="left">
	
	<form action="/groupInformation/${user.userId }" method="POST">
		<div class="container">
			<label><b>Group Name*: </b></label> <input type="text"
				placeholder="Group Name" name="groupName" required>
				 <label><b>Group Description*: </b></label>
			<input type="text" width="22%" placeholder="About" name="about" required>

			<div class="clearfix">
				<button type="submit" class="signupbtn">Create</button>
				
<button class="button"><a href="/profile" ><font color = " #ffffff"> Cancel </font></a> </button>
			</div>
	
		</div>
	
	</form>

</div>
</div>


</body>
</html>

