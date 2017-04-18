
package edu.iu.club.connect.controller;

import edu.iu.club.connect.model.UserModel;
import edu.iu.club.connect.service.AmazonAWSS3Operation;
import edu.iu.club.connect.service.serviceImplementation.EmailHandler;
import edu.iu.club.connect.service.serviceInterface.UserService;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.nio.file.Paths;
import java.util.UUID;

/*
 * The LoginController class handles all the functionality related to Login , SignUp and Authentication.
 * We are using Session attribute to maintains the session of user i.e the program maintains the session
 * of the user with associated Login credentials.
 * */

@Controller
@SessionAttributes ({"user" , "forgetPassword" , "picture"})
public class LoginController {

	@Autowired
	UserService userService;

	@Autowired EmailHandler emailHandler;


	@Autowired 
	private AmazonAWSS3Operation amazonS3OperationService;




	@RequestMapping(value="/")
	public String loginPage(){

		return "login";
	}

	@RequestMapping(value = "/sendMail" , method = RequestMethod.POST)
	public String forgetpassWord_Email( UserModel userModel) throws Exception {
		System.out.println("in forget password");
		System.out.println(
				"rec: " + userModel.getEmailId() );

		String oldPassword = userService.getPassword(userModel);
		System.out.println("LoginContro" + oldPassword);
		@SuppressWarnings("static-access")
		String sent = emailHandler.sendEmail(userModel.getEmailId(), oldPassword);
		System.out.println("sendEmail Checker" + sent);
		if (sent=="false") {
			return "invalidEntery";
		} 
		return "actionSuccess";

	}


	/* This method checks the Login credentials provided by the user and directs him to his profile if
	 * credentials matches.
	 * */

	@RequestMapping(value="/login" , method = RequestMethod.GET)
	public String login(UserModel userModel, ModelMap modelMap){
		UserModel returnedUserModel = userService.findOne(userModel);

		if(returnedUserModel==null){

			return "redirect:/";
		}

		else if(userModel.getPassword().equals(returnedUserModel.getPassword())==true){
			System.out.println("qwerty"+returnedUserModel.getFirstName());
			modelMap.addAttribute("user",returnedUserModel);

			return "profile";
		}
		else
			return"login";

	}

	/*
	 * This method checks if the username and password are valid.
	 * */

	/*
	 * This method takes the values given by the user at time of SignUp and saves them into database.
	 * */
	@RequestMapping(value="/signup" , method= RequestMethod.POST)
	public  String signup(UserModel userModel){
		UserModel returnedUserModel = userService.findOne(userModel);
		if(returnedUserModel==null){
			userService.saveOne(userModel);
			return "profile";
		}
		else
			return "signup";
	}


	@RequestMapping(value="/signUpPage" , method= RequestMethod.GET)
	public  String signupPage(){
		return "signup";
	}

	@RequestMapping(value="/profile" , method= RequestMethod.GET)
	public  String backToProfile(ModelMap modelMap){


		UserModel userModel = (UserModel) modelMap.get("user");
		UserModel returnedUserModel = userService.findOne(userModel);
		modelMap.put("user",returnedUserModel);

		return "profile";
	}



	@RequestMapping(value = "/editProfile")
	public String editProfileOpen(){
		return "edit_profile";
	}

	/*
	 * This method handles the updation of user's profile.
	 * The Model Map attribute "put" updates the session attribute and changes can be seen as soon as user hits "edit" button.
	 * */


	@RequestMapping(value="/updateProfile",method = RequestMethod.PUT)
	public  String editProfile(UserModel userModel, ModelMap modelMap){


		userService.updateOne(userModel);
		UserModel returnedUserModel = userService.findOne(userModel);
		modelMap.put("user", returnedUserModel);

		return "profile";
	}

	@RequestMapping( value = "/recoverPassword" , method = RequestMethod.GET)
	public String recoverPassword(UserModel userModel , ModelMap modelMap){

		System.out.println("inside recoverpassword");
		String response = userService.recoverPassword(userModel);
		System.out.println("checked for id and store answers");

		if(response == "email does not exist"){
			System.out.println("email does not exist");
			return "redirect:/forgetPassword";
		}

		else if(response == "false"){
			System.out.println("answers are not correct");
			return "redirect:/forgetPassword";
		}

		else{
			System.out.println("update password");
			String email = userModel.getEmailId();
			System.out.println("email" + email);
			modelMap.put("forgetPassword", email);
			System.out.println("got emailid");
			return "setNewPassword";
		}
	}

	@RequestMapping( value = "/forgetPassword", method = RequestMethod.GET)
	public String forgetPassword(){

		return "forgetPassword";
	}

	@RequestMapping(value = "/newPassword/{emailId:.+}" , method = RequestMethod.POST)
	public String changePassword(@PathVariable("emailId") String emailId , @RequestParam("password") String password){

		System.out.println("password" + password +" email Id "+emailId);
		userService.changePassword(emailId , password);
		System.out.println("password reset done");
		return "redirect:/";

	}

	@RequestMapping(value="/uploadProfilePhoto/{userId}" , method=RequestMethod.POST)
	public String uploadPhoto(@PathVariable("userId") Integer userId,@RequestParam("file") MultipartFile uploadfile,ModelMap userModelMap) throws IOException{

		String storedPathOnAmazon = amazonS3OperationService.uploadFilesToS3(uploadfile, "clubconnect");
		System.out.println("path to be used -- "+storedPathOnAmazon);

		userService.storeProfilePic(userId, storedPathOnAmazon); 
		
		return "redirect:/profile";
	}
	
	@RequestMapping(value="/some" , method=RequestMethod.GET)
	public void some(){
		
		try (BufferedReader br = new BufferedReader(new FileReader("~/app/.aws/credentials"))) {

			String sCurrentLine;

			while ((sCurrentLine = br.readLine()) != null) {
				System.out.println(sCurrentLine);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/*
	 * This method is responsible for enabling user to logout from his account by ending his session.
	 * */
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session, Model model) {
		session.removeAttribute("user");
		session.invalidate();
		if (model.containsAttribute("counter"))
			model.asMap().remove("counter");
		model.asMap().clear();

		System.out.println("Logout controller called.");
		return "login";
	}



}





