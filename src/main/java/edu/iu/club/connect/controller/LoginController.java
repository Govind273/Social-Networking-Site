package edu.iu.club.connect.controller;

import edu.iu.club.connect.model.UserModel;
import edu.iu.club.connect.service.serviceInterface.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

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

	@RequestMapping(value="/")
	public String loginPage(){
		
		return "login";
	}

	/*
	* This method checks the Login credentials provided by the user and directs him to his profile if
	* credentials matches.
	* */
    @RequestMapping(value="/login",method = RequestMethod.POST)
    public String login(UserModel userModel, ModelMap modelMap){
        UserModel returnedUserModel = userService.findOne(userModel);
		modelMap.addAttribute("user",returnedUserModel);
        if(returnedUserModel==null){
        	return "redirect:id_not_valid";
		}
		else if(userModel.getPassword().equals(returnedUserModel.getPassword())==true){
				return "profile";
			}
	else
			return"redirect:match";

    }

    @RequestMapping(value = "/id_not_valid")
	public @ResponseBody String Valid(){
    	return "Id does not exist";
	}


	@RequestMapping(value = "/match")
	public @ResponseBody String match(){
		return "Id and Password does not match";
	}


	/*
	* This method takes the values given by the user at time of SignUp and saves them into database.
	* */
	@RequestMapping(value="/signup" , method= RequestMethod.POST)
	public @ResponseBody String signup(UserModel userModel){
		    userService.saveOne(userModel);
				return "signup";
	}


	@RequestMapping(value="/signup" , method= RequestMethod.GET)
	public  String signupPage(){
		return "signup";
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
    public  String editProfile( UserModel userModel,ModelMap modelMap){
        userService.updateOne(userModel);
        UserModel returnedUserModel=userService.findOne(userModel);
        modelMap.put("user",returnedUserModel);
        return "profile";
    }

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





