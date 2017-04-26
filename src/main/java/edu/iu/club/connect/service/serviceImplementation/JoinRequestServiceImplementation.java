package edu.iu.club.connect.service.serviceImplementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.iu.club.connect.model.GroupMembersModel;
import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.RequestModel;
import edu.iu.club.connect.service.repository.GroupMemberRepository;
import edu.iu.club.connect.service.repository.GroupRepository;
import edu.iu.club.connect.service.repository.RequestRepository;
import edu.iu.club.connect.service.repository.UserRepository;
import edu.iu.club.connect.service.serviceInterface.JoinRequestService;

@Service
public class JoinRequestServiceImplementation implements JoinRequestService{

	@Autowired private GroupRepository groupRepository;

	@Autowired private GroupMemberRepository groupMemberRepository;

	@Autowired private RequestRepository requestRepository;
	
	@Autowired private UserRepository userRepository;

	@Override
	public boolean acceptRequest(int userId, int groupId, int requestId) {
		String groupName = groupRepository.getGroupNameById(groupId);
		
		List<RequestModel> request = requestRepository.getRequestById(requestId);
		
		String picture = userRepository.getPrifilePic(userId);

		GroupMembersModel groupMember = new GroupMembersModel();

		groupMember.setGroupId(groupId);
		groupMember.setUserId(request.get(0).getUserId());
		groupMember.setGroupName(groupName);
		groupMember.setProfilePic(picture);

		groupMemberRepository.save(groupMember);

		requestRepository.delete(requestId);

		return true;
	}
	
	@Override
	public boolean denyRequest(int requestId) {
		
		requestRepository.delete(requestId);
		return true;
	}

	@Override
	public List<RequestModel> findAllRequests(int adminId) {
		List<RequestModel> requestModel = requestRepository.findById(adminId);

		return requestModel;

	}

	@Override
	public boolean sendJoinRequest(int userId, int groupId, GroupModel adminId) {
		
		RequestModel newRequest = new RequestModel();
		String picture = userRepository.getPrifilePic(userId);
		newRequest.setAdminId(adminId.getAdminId());
		newRequest.setGroupId(groupId);
		newRequest.setUserId(userId);
		newRequest.setGroupName(adminId.getGroupName());
		newRequest.setProfilePic(picture);
		
		requestRepository.save(newRequest);
		
		return true;
		
		
	}

	@Override
	public List<RequestModel> checkRequest(int userId, int groupId) {
		
		List<RequestModel> checkRequest = requestRepository.findRequestById(userId , groupId);
		
		return checkRequest;
	}

	@Override
	public List<GroupMembersModel> isAlreadyJoined(int userId, int groupId) {
		
		List<GroupMembersModel> isAlreadyJoined = groupMemberRepository.isAlreadyJoined(userId , groupId);
		
		return isAlreadyJoined;
	}

	@Override
	public List<GroupMembersModel> groupMembers( int groupId) {
		
		List<GroupMembersModel> groupmemberList = groupMemberRepository.findAllByGroupId( groupId);
		
		return groupmemberList;
	}

}
