
package edu.iu.club.connect.controller;

import edu.iu.club.connect.model.EducationalDetailsModel;
import edu.iu.club.connect.model.GroupMembersModel;
import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.JobDetailsModel;
import edu.iu.club.connect.model.RequestModel;
import edu.iu.club.connect.model.UserModel;

import edu.iu.club.connect.service.CloudnaryService;
import edu.iu.club.connect.service.MultipartToFile;
import edu.iu.club.connect.service.serviceImplementation.EmailHandler;
import edu.iu.club.connect.service.serviceInterface.GroupService;
import edu.iu.club.connect.service.serviceInterface.JobDetailsService;
import edu.iu.club.connect.service.serviceInterface.JoinRequestService;
import edu.iu.club.connect.service.serviceInterface.UserService;
import edu.iu.club.connect.service.serviceInterface.EducationDetailsService;

import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

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
	
	@Autowired
	EducationDetailsService educationDetailsService;

	@Autowired EmailHandler emailHandler;
	@Autowired CloudnaryService CloudnaryService;
	@Autowired MultipartToFile multipartFile;
	

	@Autowired private JoinRequestService joinRequestService;
	@Autowired
	JobDetailsService jobDetailsService;

	@Autowired
	GroupService groupService;

	HashMap<String , Integer> forgetPasswordEntry = new HashMap<String , Integer>();
	
	HashMap<String , UserModel> signUpEntry = new HashMap<String , UserModel>();
	
	
	@RequestMapping(value="/")
	public String loginPage(){

		return "login";
	}

	@RequestMapping(value = "/sendMail" , method = RequestMethod.POST)
	public String forgetpassWord_Email( UserModel userModel) throws Exception {
		System.out.println("in forget password");
		System.out.println(
				"rec: " + userModel.getEmailId() );

		UserModel userExist = userService.findOne(userModel.getEmailId());
		if(userExist !=null){

			String forgetPasswordEmail = userExist.getEmailId();
			Random r = new Random( System.currentTimeMillis() );
			int OTP = ((1 + r.nextInt(2)) * 10000 + r.nextInt(10000));
		
			forgetPasswordEntry.put(forgetPasswordEmail, OTP);

			@SuppressWarnings("static-access")
			String sent = emailHandler.sendEmail(forgetPasswordEmail, OTP);

			System.out.println("sendEmail Checker" + sent);
			if (sent=="false") {
				return "forgetPassword";
			} 
			return "OTP";
		}

		else  return "forgetPassword";

	}
	
	@RequestMapping(value = "/checkOTP" , method = RequestMethod.GET)
	public String checkOTP(@RequestParam("emailId") String emailId , @RequestParam("OTP") int OTP , ModelMap modelMap){
		
		if(forgetPasswordEntry.containsKey(emailId)){
			if(OTP == forgetPasswordEntry.get(emailId)){
				forgetPasswordEntry.remove(emailId);
				modelMap.put("forgetPassword", emailId);
				return "setNewPassword";
			}
			else return "OTP";
		}
		else  return "OTP";
	}

	/* This method checks the Login credentials provided by the user and directs him to his profile if
	 * credentials matches.
	 * */

	@RequestMapping(value="/login" , method = RequestMethod.GET)
	public String login(UserModel userModel, ModelMap modelMap){
		UserModel returnedUserModel = userService.findOne(userModel.getEmailId());

		if(returnedUserModel==null){

			return "redirect:/";
		}
		else if(userModel.getPassword().equals(returnedUserModel.getPassword())==true){
			System.out.println("qwerty"+returnedUserModel.getFirstName());
			modelMap.addAttribute("user",returnedUserModel);

			return "redirect:/profile";
		}
		else
			return"login";

	}
	
	@RequestMapping(value = "/validatebySendingMail" , method = RequestMethod.POST)
	public String validateMail(UserModel userModel) throws Exception{
		
		System.out.println("in validate email id");
		System.out.println(
				"rec: " + userModel.getEmailId() );
		
		

		UserModel userExist = userService.findOne(userModel.getEmailId());
		
		if(userExist == null){

			signUpEntry.put(userModel.getEmailId() , userModel);
			@SuppressWarnings("null")
			String email = userModel.getEmailId();
			Random r = new Random( System.currentTimeMillis() );
			int OTP = ((1 + r.nextInt(2)) * 10000 + r.nextInt(10000));
		
			forgetPasswordEntry.put(email, OTP);

			@SuppressWarnings("static-access")
			String sent = emailHandler.sendEmail(email, OTP);

			System.out.println("sendEmail Checker" + sent);
			if (sent=="false") {
				return "signup";
			} 
			else return "SignUpOTP";
			
		}
		
		else  {
			System.out.println("user already exist");
			return "signup" ;
		}
	}

	/*
	 * This method checks if the username and password are valid.
	 * */

	/*
	 * This method takes the values given by the user at time of SignUp and saves them into database.
	 * */
	@RequestMapping(value="/signup" , method= RequestMethod.POST)
	public  String signup(@RequestParam("emailId") String emailId , @RequestParam("OTP") int OTP , ModelMap modelMap){

		if(forgetPasswordEntry.containsKey(emailId)){
			if(OTP == forgetPasswordEntry.get(emailId)){
				
				userService.saveOne(signUpEntry.get(emailId));	
				modelMap.put("user" , signUpEntry.get(emailId));
				
				forgetPasswordEntry.remove(emailId);
				signUpEntry.remove(emailId);

				return "profile";
			}
		}		
				return "signup";
			
	}
				
		


	@RequestMapping(value="/signUpPage" , method= RequestMethod.GET)
	public  String signupPage(){
		return "signup";
	}

//	This controller is called when we need to load the user profile page and collects all the requeiered information to be displayed in the user profile page
	@RequestMapping(value="/profile" , method= RequestMethod.GET)
	public  String backToProfile(ModelMap modelMap){
		boolean myProfile=true;

		//User details
		UserModel userModel = (UserModel) modelMap.get("user");
		UserModel returnedUserModel = userService.findOne(userModel.getEmailId());
		modelMap.put("user",returnedUserModel);
		//Groups the user is part of
		List<GroupModel> mygroups = groupService.findMyGroups(returnedUserModel.getUserId());
		modelMap.put("mygroups", mygroups);
		//Groups user is admin of
		List<GroupModel> GroupsByMe = groupService.findAllGroupsById(returnedUserModel.getUserId());	
		modelMap.put("GroupsByMe", GroupsByMe);
		
		/// adding jobdetails
		List<JobDetailsModel> myJobDetails = jobDetailsService.findAllJobsById(returnedUserModel.getUserId());
		List<EducationalDetailsModel> myEduDetails = educationDetailsService.findAllEduById(returnedUserModel.getUserId());
		List<RequestModel> requestModel = joinRequestService.findAllRequests(returnedUserModel.getUserId());
		modelMap.put("friendRequests", requestModel);
		modelMap.put("myEduDetails", myEduDetails);
		modelMap.put("myJobDetails", myJobDetails);
		modelMap.put("myProfile", myProfile);
		return "profile";
	}



	@RequestMapping(value = "/editProfile")
	public String editProfileOpen(){
		return "edit_profile";
	}
	
	@RequestMapping(value = "/goToProfile/{userId}")
	public String goToProfile(@PathVariable("userId") int userId2,ModelMap modelMap){
		//User details
		UserModel userModel = (UserModel) modelMap.get("user");
				int myuserId=userModel.getUserId();
				List<RequestModel> requestModel = joinRequestService.findAllRequests(myuserId);
				
				if (myuserId == userId2){
					return "redirect:/profile";
				}
				boolean myProfile=false;
				UserModel toGoUserModel = userService.listUserName(userId2);
				modelMap.put("user2",toGoUserModel);
				//Groups the user is part of

				List<GroupModel> mygroups = groupService.findMyGroups(toGoUserModel.getUserId());
				modelMap.put("mygroups", mygroups);
				//Groups user is admin of
				List<GroupModel> GroupsByMe = groupService.findAllGroupsById(toGoUserModel.getUserId());
				
				modelMap.put("GroupsByMe", GroupsByMe);
				/// adding jobdetails
				List<JobDetailsModel> myJobDetails = jobDetailsService.findAllJobsById(toGoUserModel.getUserId());
				///adding education details
				List<EducationalDetailsModel> myEduDetails = educationDetailsService.findAllEduById(toGoUserModel.getUserId());
				modelMap.put("friendRequests", requestModel);
				modelMap.put("myEduDetails", myEduDetails);
				modelMap.put("myJobDetails", myJobDetails);
				modelMap.put("myProfile", myProfile);
		
		return "myfriendspage";
	}
	
	

	/*
	 * This method handles the updation of user's profile.
	 * The Model Map attribute "put" updates the session attribute and changes can be seen as soon as user hits "edit" button.
	 * */


	@RequestMapping(value="/updateProfile",method = RequestMethod.POST)
	public  String editProfile(UserModel userModel, ModelMap modelMap){
		userService.updateOne(userModel);
		UserModel returnedUserModel = userService.findOne(userModel.getEmailId());
		modelMap.put("user", returnedUserModel);
		return "redirect:/profile";//vishi
	}
	
	@RequestMapping(value="/updateProfileDate/{emailId:.+}",method = RequestMethod.POST)
	public  String editProfileDate(UserModel userModel, @PathVariable("emailId") String emailId,ModelMap modelMap){
		userService.updateOne(userModel);
		UserModel returnedUserModel = userService.findOne(emailId);
		modelMap.put("user", returnedUserModel);
		return "redirect:/profile";//vishi
	}
	
	
	@RequestMapping(value="/addJobDetails",method = RequestMethod.POST)
	public  String addDetails(JobDetailsModel jobDetailsModel, ModelMap modelMap){
		jobDetailsService.saveOne(jobDetailsModel);	
		return "redirect:/profile";
	}
//vishi	
	@RequestMapping(value="/editJobDetail",method = RequestMethod.POST)
	public  String editDetails(JobDetailsModel myJobDetails, ModelMap modelMap){
			jobDetailsService.edit(myJobDetails);	
		
		return "redirect:/profile";
	}
	
	@RequestMapping(value="/deleteJobDetails/{eduDetailsId}",method = RequestMethod.POST)
	public  String deleteDetails(@PathVariable("jobdetails_Id") int jobdetails_Id, JobDetailsModel jobDetailsModel,ModelMap modelMap){
		jobDetailsService.deleteOne(jobdetails_Id);	
		return "redirect:/profile";
	}
	
	/// Adding Education Details
	
	@RequestMapping(value="/addEducationDetails",method = RequestMethod.POST)
	public  String addEducationDetails(EducationalDetailsModel educationalDetailsModel, ModelMap modelMap){
		educationDetailsService.saveOne(educationalDetailsModel);	
		return "redirect:/profile";
	}
//vishi	
	@RequestMapping(value="/editEducationDetail",method = RequestMethod.POST)
	public  String editDetails(EducationalDetailsModel educationalDetailsModel, ModelMap modelMap){
		educationDetailsService.edit(educationalDetailsModel);	
		
		return "redirect:/profile";
	}
	
	@RequestMapping(value="/deleteEducationDetails/{eduDetailsId}",method = RequestMethod.POST)
	public  String deleteDetails(@PathVariable("eduDetailsId") int eduDetailsId, EducationalDetailsModel educationalDetailsModel,ModelMap modelMap){
		educationDetailsService.deleteOne(eduDetailsId);	
		return "redirect:/profile";
	}
	///
	
	@RequestMapping(value="/updateliftstatus",method = RequestMethod.POST)
	public  String editlifestatus(UserModel userModel, ModelMap modelMap){
			userService.editlifestatus(userModel);	
		
		return "redirect:/profile";
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





