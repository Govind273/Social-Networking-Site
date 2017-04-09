package edu.iu.club.connect.service.serviceInterface;

import java.util.List;

import edu.iu.club.connect.model.GroupMembersModel;
import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.RequestModel;

public interface JoinRequestService {
	
	public boolean acceptRequest(int userId , int groupId , int requestId);
	public List<RequestModel> findAllRequests(int userId);
	public boolean sendJoinRequest(int userId, int groupId, GroupModel adminId);
	public List<RequestModel> checkRequest(int userId, int groupId);
	public List<GroupMembersModel> isAlreadyJoined(int userId, int groupId);

}
