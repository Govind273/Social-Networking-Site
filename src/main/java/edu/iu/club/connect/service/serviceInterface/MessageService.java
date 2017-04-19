package edu.iu.club.connect.service.serviceInterface;

import java.util.List;
import java.util.Set;

import edu.iu.club.connect.model.MessageModel;
import edu.iu.club.connect.model.UserModel;

public interface MessageService {
	
	public List<MessageModel> getMessages( int senderId , int receiverId);

	public boolean saveNewMessage(String message, int senderId, int receiverId);

	public List<UserModel> getMyMessages(int userId);

}
