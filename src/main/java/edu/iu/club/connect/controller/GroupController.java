package edu.iu.club.connect.controller;

import edu.iu.club.connect.model.GroupMembersModel;
import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.PostModel;
import edu.iu.club.connect.service.serviceInterface.GroupService;
import edu.iu.club.connect.service.serviceInterface.JoinRequestService;
import edu.iu.club.connect.service.serviceInterface.PostService;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


/**
 * Created by walia on 2/19/2017.
 */

@Controller
@SessionAttributes ({"admin_id" , "group" , "groupSearched" , "myGroups" ,"myFriends"})

public class GroupController {

	
	@Autowired
	PostService postService;

	@Autowired
	GroupService groupService;
	

	@Autowired
	JoinRequestService joinRequestService;
	
	@RequestMapping(value = "/createGroup")
	public String creategroup(){
		return "group";
	}
	
	
	
	@RequestMapping(value = "/groupPage/{groupId}/{userId}" , method = RequestMethod.GET)
	public ModelAndView openGroupPage(@PathVariable("groupId") int groupId, @PathVariable("userId") int userId , ModelMap modelMap, PostModel postModel){
		ModelAndView mv=new ModelAndView("groupsProfile");
		List<GroupMembersModel> alreadyFriend = joinRequestService.isAlreadyJoined(userId , groupId);
    	postModel.setGroupId(groupId);
    	List<PostModel> ps= postService.search(postModel);
    	if (ps.size()>10){
    	ps.subList(10,ps.size()).clear(); 	
    	}
    	/****vishi***/
    	boolean isadmin= groupService.isadmin(userId , groupId);
    	mv.addObject("admin",isadmin);
    	GroupMembersModel gmmadmin=new GroupMembersModel(userId,groupId);
    	alreadyFriend.add(gmmadmin);
       	mv.addObject("ps",ps); 
    	mv.addObject("groupmember",alreadyFriend);
		GroupModel group = groupService.findGroup(groupId);
		mv.addObject("groupSearched", group);
		return mv;
	}
	
	@RequestMapping(value = "/groupInformation/{admin_id}",method = RequestMethod.POST)
	public String createGroup(@PathVariable("admin_id") int admin_id , GroupModel groupModel){

		groupModel.setAdminId(admin_id);
		groupService.saveOne(groupModel);
		
		return "redirect:/profile";
	}
	
	@RequestMapping(value = "/yourGroups/{adminId}", method = RequestMethod.GET)
	public String seeYourGroups(@PathVariable("adminId") int adminId , ModelMap modelMap){
		
		List<GroupModel> myGroups = groupService.findAllGroupsById(adminId);
		modelMap.put("myGroups", myGroups);
		
		return "MyGroups";
	}
	
	@RequestMapping(value = "/friends/{userId}", method = RequestMethod.GET)
	public String myFriends(@PathVariable("userId") int userId , ModelMap modelMap){
		
		List<GroupMembersModel> myFriends = groupService.findMyFriends(userId);
		modelMap.put("myFriends", myFriends);
		return "MyFriends";
	}

//	@RequestMapping(value = "/searchGroup", method=RequestMethod.POST)
//	public String search(GroupModel groupModel, ModelMap modelMap){
//		System.out.println("I am in search");
//		GroupModel group = groupService.searchOne(groupModel);    
//
//
//		modelMap.addAttribute("searchGroup", group);
//
//		if(group==null){
//			return "redirect:profile";
//		}
//		else return "groupsProfile";
//	}



	//    @RequestMapping(value = "/groupsData")
	//    public  ArrayList<GroupModel> allGroups(){
	//       ArrayList<GroupModel> groupModel= groupService.findOne();
	//        //modelMap.addAttribute("group",groupModel);
	//       return groupModel;
	//    }



}
