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
import edu.iu.club.connect.service.serviceInterface.JoinRequestService;

@Service
public class JoinRequestServiceImplementation implements JoinRequestService{

	@Autowired private GroupRepository groupRepository;

	@Autowired private GroupMemberRepository groupMemberRepository;

	@Autowired private RequestRepository requestRepository;

	@Override
	public boolean acceptRequest(int userId, int groupId, int requestId) {
		String groupName = groupRepository.getGroupNameById(groupId);

		GroupMembersModel groupMember = new GroupMembersModel();

		groupMember.setGroupId(groupId);
		groupMember.setUserId(userId);
		groupMember.setGroupName(groupName);

		groupMemberRepository.save(groupMember);

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
	
		newRequest.setAdminId(adminId.getAdmin_id());
		newRequest.setGroupId(groupId);
		newRequest.setUserId(userId);
		newRequest.setGroupName(adminId.getGroupName());
		
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

}