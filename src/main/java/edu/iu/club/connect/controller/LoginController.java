package edu.iu.club.connect.controller;

import edu.iu.club.connect.model.UserModel;
import edu.iu.club.connect.service.serviceInterface.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.util.UUID;

/*
* The LoginController class handles all the functionality related to Login , SignUp and Authentication.
* We are using Session attribute to maintains the session of user i.e the program maintains the session
* of the user with associated Login credentials.
* */

@Controller
@SessionAttributes ({"user"})
public class LoginController {

	@Autowired
    UserService userService;

	@Value("${resource.indexed.folder.name}")
	private String pictureDirectoryPath;


	@RequestMapping(value="/")
	public String loginPage(){
		
		return "login";
	}

	/*
	* This method checks the Login credentials provided by the user and directs him to his profile if
	* credentials matches.
	* */
    @RequestMapping(value="/login",method = RequestMethod.GET)
    public String login(UserModel userModel, ModelMap modelMap){
        UserModel returnedUserModel = userService.findOne(userModel);
		modelMap.addAttribute("user",returnedUserModel);
        if(returnedUserModel==null){
        	return "redirect:login";
		}
		else if(userModel.getPassword().equals(returnedUserModel.getPassword())==true){
				return "profile";
			}
	else
			return"redirect:login";

    }


	/*
	* This method takes the values given by the user at time of SignUp and saves them into database.
	* */
	@RequestMapping(value="/signup" , method= RequestMethod.POST)
	public  String signup(UserModel userModel){
		    userService.saveOne(userModel);
				return "profile";
	}


	@RequestMapping(value="/signUpPage" , method= RequestMethod.GET)
	public  String signupPage(){
		return "signup";
	}
	
	@RequestMapping(value="/profile" , method= RequestMethod.GET)
	public  String backToProfile(){
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
	@RequestMapping(value="/updateProfile",method = RequestMethod.POST)
/*Commented by vishy on 04/09/2017 to make sure that the edit functionality works	
    public  String editProfile(UserModel userModel, @RequestParam("file") MultipartFile uploadFile, ModelMap modelMap){*/
    public  String editProfile(UserModel userModel,  ModelMap modelMap){

//try {
//	UUID randonPicUuid = UUID.randomUUID();
//
//	String filename = randonPicUuid.toString();
//	String filepath = Paths.get(pictureDirectoryPath, filename).toString() + ".jpg";
//
//	// Save the file locally
//	BufferedOutputStream stream =
//			new BufferedOutputStream(new FileOutputStream(new File(filepath)));
//	stream.write(uploadFile.getBytes());
//	stream.close();
//
//	userModel.setProfilePic(
//            pictureDirectoryPath+"\\" + randonPicUuid.toString() + ".jpg");


	userService.updateOne(userModel);
	UserModel returnedUserModel = userService.findOne(userModel);
	modelMap.put("user", returnedUserModel);
//}catch (Exception e) {
//	System.out.println(e.getMessage());
//}
        return "profile";
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





