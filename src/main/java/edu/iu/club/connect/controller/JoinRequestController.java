package edu.iu.club.connect.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.iu.club.connect.model.GroupMembersModel;
import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.RequestModel;
import edu.iu.club.connect.service.serviceInterface.GroupService;
import edu.iu.club.connect.service.serviceInterface.JoinRequestService;


@Controller
@SessionAttributes({"friendRequests" , "seeGroup"})
public class JoinRequestController {

	@Autowired private JoinRequestService joinRequestService;;
	
	@Autowired private GroupService groupService;
	
	
	
	@RequestMapping(value = "/requestGroup/{userId}/{groupId}", method = RequestMethod.POST)
	public String sendFriendRequest(@PathVariable("userId") int userId, @PathVariable("groupId") int groupId, ModelMap modelMap){
	
		
		List<RequestModel> checkRequest = joinRequestService.checkRequest(userId , groupId);
		if(checkRequest != null && !checkRequest.isEmpty()) {
			System.out.println("Friend Request already sent");
			return "redirect:/groupPage/"+groupId+"/"+userId;

		}
		
		List<GroupMembersModel> alreadyFriend = joinRequestService.isAlreadyJoined(userId , groupId);
		if(alreadyFriend != null && !alreadyFriend.isEmpty()) {
			System.out.println("You are already part of group");

		}
		
		else{
			GroupModel adminId = groupService.getAdminId(groupId);
			System.out.println("sending join request");
			joinRequestService.sendJoinRequest(userId , groupId, adminId);
			System.out.println("join request sent");
			modelMap.put("seeGroup", adminId);
		}
		

		return "redirect:/groupPage/"+groupId+"/"+userId;
		
	}

	@RequestMapping(value = "/seeAllRequest/{userId}" , method =RequestMethod.GET )
	public String seeMyFriendRequests(@PathVariable("userId") int userId , ModelMap modelMap){

		List<RequestModel> requestModel = joinRequestService.findAllRequests(userId);

		if(requestModel != null && !requestModel.isEmpty()) {
			System.out.println("There are some pending friend request");
			System.out.println(requestModel.get(0).getGroupName());
			modelMap.put("friendRequests", requestModel);

		}

		else{

			System.out.println("No pending requests");
		}

		return "FriendRequests";


	}

	@RequestMapping(value = "/acceptRequest/{userId}/{groupId}/{requestId}", method = RequestMethod.POST)
	public String acceptRequest(@PathVariable("userId") int userId , @PathVariable("groupId") int groupId , @PathVariable("requestId") int requestId){
		System.out.println("friend request sent to accept");
		joinRequestService.acceptRequest(userId , groupId , requestId);
		System.out.println("request accepted");
		return "redirect:/profile";
	}
	
	@RequestMapping(value = "/denyRequest/{requestId}/{userId}" , method = RequestMethod.PUT)
	public String denyRequest(@PathVariable("requestId") int requestId,@PathVariable("userId") int userId){
		
		System.out.println("inside deny request");
		joinRequestService.denyRequest(requestId);
		System.out.println("requested deleted");
		return "redirect:/seeAllRequest?userId="+userId;
	}


}
