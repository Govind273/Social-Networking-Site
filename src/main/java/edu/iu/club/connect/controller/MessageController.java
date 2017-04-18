package edu.iu.club.connect.controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.iu.club.connect.model.MessageModel;
import edu.iu.club.connect.model.UserModel;
import edu.iu.club.connect.service.serviceInterface.MessageService;

@Controller
@SessionAttributes({"myMessages" , "friensMessageList" , "friendMessage"})
public class MessageController {
	
	@Autowired MessageService messageService;
	
	@RequestMapping( value = "openMessageBox/{senderId:.+}/{receiverId:.+}" , method = RequestMethod.GET)
	public String messageBox(@PathVariable("senderId") int senderId , @PathVariable("receiverId") int receiverId , ModelMap modelMap){
		
		System.out.println("i am inside message controller" + senderId + receiverId );
		List<MessageModel> myMessages = messageService.getMessages(senderId, receiverId);
		System.out.println("after list");
		modelMap.put("friendMessage" ,receiverId );
		modelMap.put("myMessages",myMessages);
		
		return "MessagePage";
	}
	
	@RequestMapping( value = "/sendMessage/{senderId:.+}/{receiverId:.+}" , method = RequestMethod.POST)
	public String messageRoom(@PathVariable("senderId") int senderId , @PathVariable("receiverId") int receiverId ,@RequestParam("message") String message , ModelMap modelMap){
		
		System.out.println("message"+message);
		
		messageService.saveNewMessage(message , senderId , receiverId);
		//modelMap.put("myMessages", message);
		
		return "redirect:/openMessageBox/"+senderId+"/"+receiverId;
	}
	
	@RequestMapping( value = "/messages/{userId}" , method = RequestMethod.GET)
	public String myMessages(@PathVariable("userId") int userId , ModelMap modelMap){
		
		System.out.println("inside my messages");
		
		List<UserModel> allMessages = messageService.getMyMessages(userId);
		System.out.println(allMessages.size());
		modelMap.put("friensMessageList", allMessages);
		return "MessageList";
	}
	
	@RequestMapping( value = "/messages/openMessagesOfThisFriend/{userId}/{friendsId}" , method = RequestMethod.GET)
	public String open(@PathVariable("userId") int userId , @PathVariable("friendsId") int friendsId){
		
		return "redirect:/openMessageBox/"+userId+"/"+friendsId ;
	}
	
	@RequestMapping( value = "/friends/doMessageToThisFriend/{userId}/{friendsId}" , method = RequestMethod.GET)
	public String openMessage(@PathVariable("userId") int userId , @PathVariable("friendsId") int friendsId){
		
		return "redirect:/openMessageBox/"+userId+"/"+friendsId ;
	}

}
