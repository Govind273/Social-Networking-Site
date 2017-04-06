function validate(){
	var attempts=3;
	var emailId=document.login.emailId.value;
	var password=document.login.password.value;
	alert("in login js")
	if(user == '')
	{
	document.getElementById('error').innerHTML="Please Enter Username";
	return false;
	}
	if(pass == '')
	{
	document.getElementById('error').innerHTML="Please Enter Password";
	return false;
}