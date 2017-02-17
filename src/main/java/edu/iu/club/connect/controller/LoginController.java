package edu.iu.club.connect.controller;

import edu.iu.club.connect.model.UserModel;
//import org.json.JSONObject;
import edu.iu.club.connect.service.serviceInterface.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {

	@Autowired
    UserService userService;

	@RequestMapping(value="/")
	public String loginPage(){
		
		return "login";
	}
    @RequestMapping(value="/login",method = RequestMethod.POST)
    public String login(UserModel userModel){
        UserModel returnedUserModel = userService.findOne(userModel);

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

	@RequestMapping(value="/signup" , method= RequestMethod.POST)
	public @ResponseBody String signup(UserModel userModel){
		    userService.saveOne(userModel);
				return "signup";
	}
	@RequestMapping(value="/signup" , method= RequestMethod.GET)
	public  String signupPage(){
		return "signup";
	}

    @RequestMapping(value="/editProfile")
    public  String editProfile(){
        return "edit_profile";
    }
}
