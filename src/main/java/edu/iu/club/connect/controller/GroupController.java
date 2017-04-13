package edu.iu.club.connect.controller;

import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.service.serviceInterface.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;



/**
 * Created by walia on 2/19/2017.
 */

@Controller
@SessionAttributes ({"admin_id" , "group" , "groupSearched"})

public class GroupController {



	@Autowired
	GroupService groupService;
	
	@RequestMapping(value = "/createGroup")
	public String creategroup(){
		return "group";
	}
	
	@RequestMapping(value = "/groupPage/{groupId}" , method = RequestMethod.GET)
	public String openGroupPage(@PathVariable("groupId") int groupId , ModelMap modelMap){
		
		GroupModel group = groupService.findGroup(groupId);
		modelMap.put("groupSearched", group);
		return "groupsProfile";
	}

	@RequestMapping(value = "/groupInformation/{admin_id}",method = RequestMethod.POST)
	public String createGroup(@PathVariable("admin_id") int admin_id , GroupModel groupModel){

		groupModel.setAdmin_id(admin_id);
		groupService.saveOne(groupModel);
		
		return "redirect:/profile";
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
