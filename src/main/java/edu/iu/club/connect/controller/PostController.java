package edu.iu.club.connect.controller;

import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.PostModel;
import edu.iu.club.connect.service.serviceInterface.PostService;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;


/**
 * Created by vishi on 2/19/2017.
 */

@Controller
@SessionAttributes ({"group_id"})
public class PostController {
	
    @Autowired
    PostService postService;

    @RequestMapping(value = "/createPost/{group_id}",method = {RequestMethod.GET,RequestMethod.POST})
    public String createPost( @PathVariable("group_id") int group_id, PostModel postModel){
    	try{
    	postModel.setGroupId(group_id);
    	System.out.println("im in");
    	DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    	Date date = new Date();
    	postModel.setPostedDatetime(date);
    	postService.saveOne(postModel);
        return "groupsProfile";
        }
    	catch(Exception e){
    		
    		return "Exception is" +e ;	
    	}
    }
   
//    public String getDoctorSearchResults(@RequestParam(required=false) 
    //String LastName,@RequestParam(required=false) String Hospital,
    //@RequestParam(required=false) String Specialty, @RequestParam(required=false) String date1, ModelMap model) {

//    @RequestMapping(value = "/listPost/",method = RequestMethod.GET)
//    public String findLatest(PostModel postModel){
//    	
//    	return "groupsProfile";
//    }

}
