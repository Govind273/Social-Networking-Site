package edu.iu.club.connect.controller;

import edu.iu.club.connect.model.GroupMembersModel;
import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.PostModel;
import edu.iu.club.connect.service.serviceInterface.GroupService;
import edu.iu.club.connect.service.serviceInterface.JoinRequestService;
import edu.iu.club.connect.service.serviceInterface.PostService;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


/**
 * Created by vishi on 2/19/2017.
 */

@Controller
@SessionAttributes ({"groupSearched", "user_id" })
public class PostController {

	@Autowired
	JoinRequestService joinRequestService;
	
    @Autowired
    PostService postService;
    
    @Autowired
    GroupService groupService;

    @RequestMapping(value = "/createPost/{group_id}/{user_id}",method = RequestMethod.POST  )
    public ModelAndView createPost( @PathVariable("group_id") int group_id, @PathVariable("user_id") int user_id,PostModel postModel){
    	ModelAndView mv1=new ModelAndView("groupsProfile");
    	postModel.setGroupId(group_id);
    	postModel.setPostedby(user_id);
    	List<GroupMembersModel> alreadyFriend = joinRequestService.isAlreadyJoined(user_id , group_id);
    	boolean isadmin= groupService.isadmin(user_id , group_id);
    	mv1.addObject("admin",isadmin);
    	GroupMembersModel gmmadmin=new GroupMembersModel(user_id,group_id);
    	
    	alreadyFriend.add(gmmadmin);
    	Date date = new Date();
    	postModel.setPostedDatetime(date);
    	postService.saveOne(postModel);
    	List<PostModel> ps= postService.search(postModel);
    	if (ps.size()>10){
    	ps.subList(10,ps.size()).clear();}
    	
    	mv1.addObject("groupmember",alreadyFriend);
    	mv1.addObject("ps",ps);
        return mv1;
        }
    
    
    @RequestMapping(value = "/deletePost/{post_id}/{user_id}/{group_id}")
    public ModelAndView deletePost( @PathVariable("post_id") int post_id, @PathVariable("user_id") int user_id,  @PathVariable("group_id") int group_id,PostModel postModel){
    	ModelAndView mv=new ModelAndView("groupsProfile");
    	Map<String, String> message = new HashMap<String, String>();
    	postModel.setPostId(post_id);
    	PostModel pm=postService.getPostedby(post_id);
    	String rror="  ";
    	
    	int postby=pm.getPostedby();
    	if (postby == user_id){
    		postService.deleteById(post_id);
    		rror="Post deleted! ";
    		message.put("message",rror);
    		
    	}
    	else {
    		 rror="Not authorised to delete this post.";
    		message.put("message","Not authorised to delete this post.");
    	}

    	List<GroupMembersModel> alreadyFriend = joinRequestService.isAlreadyJoined(user_id , group_id);
    	mv.addObject("groupmember",alreadyFriend);
    	postModel.setGroupId(group_id);
    	List<PostModel> ps= postService.search(postModel);
    	if (ps.size()>10){
    	ps.subList(10,ps.size()).clear();}
    	mv.addObject("ps",ps);
    	mv.addObject("message", message);
        return mv;
        }
   
    @RequestMapping(value = "/getallposts/{group_id}" ,method = RequestMethod.GET)
    public ModelAndView listPost( @PathVariable("group_id") int group_id, PostModel postModel){
    	ModelAndView mv=new ModelAndView("groupsProfile");
    	postModel.setGroupId(group_id);
    	List<PostModel> ps= postService.search(postModel);
    	if (ps.size()>10){
    	ps.subList(10,ps.size()).clear();
    	}
    		mv.addObject("ps",ps); 
    	
    	System.out.println(ps);
    	 	
        return mv;
        }
   

}
