package edu.iu.club.connect.service.serviceImplementation;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.iu.club.connect.model.MessageModel;
import edu.iu.club.connect.model.UserModel;
import edu.iu.club.connect.service.repository.MessageRepository;
import edu.iu.club.connect.service.repository.UserRepository;
import edu.iu.club.connect.service.serviceInterface.MessageService;

@Service
public class MessageServiceImplementation implements MessageService{

	@Autowired MessageRepository messageRepository;
	
	@Autowired UserRepository userRepository;
	
	@Override
	public List<MessageModel> getMessages(int senderId, int receiverId) {
		
		System.out.println("inside message inplementation");
		List<MessageModel> myMessages = messageRepository.getMessagesOrderByMessageTimeDesc(senderId , receiverId);
		
		for(MessageModel message : myMessages){
			System.out.println("Message" + message.getMessageTime());
		}
		
		return myMessages;
	}

	@Override
	public boolean saveNewMessage(String message, int senderId, int receiverId) {
		
		System.out.println(" sender id "+senderId);
		System.out.println("receiver id"+receiverId);
		String senderName = userRepository.findUserNameById(senderId);
		String receiverName = userRepository.findUserNameById(receiverId);
		
		MessageModel newMessage = new MessageModel();
		newMessage.setMessage(message);
		newMessage.setReceiverId(receiverId);
		newMessage.setReceiverName(receiverName);
		newMessage.setSenderId(senderId);
		newMessage.setSenderName(senderName);
		
		messageRepository.save(newMessage);
		return true;
	}

	@Override
	public List<UserModel> getMyMessages(int userId) {
		
		Set<Integer> friendsMessage = messageRepository.getAllMessageList(userId);
		List<UserModel> myFriends = new ArrayList<UserModel>();
		UserModel userModel = new UserModel();
		for(int friends : friendsMessage){
			userModel.setUserId(friends);
			myFriends.add(userModel);
		}
		
		return myFriends;
	}

}
