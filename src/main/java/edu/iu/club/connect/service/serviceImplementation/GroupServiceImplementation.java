package edu.iu.club.connect.service.serviceImplementation;

import edu.iu.club.connect.model.GroupMembersModel;
import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.UserModel;
import edu.iu.club.connect.service.repository.GroupMemberRepository;
import edu.iu.club.connect.service.repository.GroupRepository;
import edu.iu.club.connect.service.serviceInterface.GroupService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by walia on 2/19/2017.
 */

@Service
public class GroupServiceImplementation implements GroupService {

    @Autowired
    GroupRepository groupRepository;
    
    @Autowired
    private GroupMemberRepository groupMemberRepository;
    @Override
    public boolean saveOne(GroupModel groupModel) {
    	System.out.println(groupModel.getAdminId());
    	
        groupRepository.save(groupModel);
        
        GroupMembersModel model = new GroupMembersModel();
        model.setGroupId(groupModel.getGroupId());
        model.setGroupName(groupModel.getGroupName());
        model.setUserId(groupModel.getAdminId());
        
        groupMemberRepository.save(model);
        return true;

    }

    @Override
    public ArrayList<GroupModel> findOne(){
        return groupRepository.findAll();

    }

    @Override
	public GroupModel getAdminId(int groupId) {	
		GroupModel adminId = groupRepository.getAdminById(groupId);	
		return adminId;
		
	}
    
    @Override
   	public boolean isadmin(int userId,int groupId) {	
   		GroupModel group = groupRepository.isadmin( userId, groupId);	
   		if( group ==null){
   			return false;
   		}
   		return true;
   		
   	}

	@Override
	public GroupModel findGroup(int groupId) {
		
		GroupModel group = groupRepository.findGroupById(groupId);
		return group;
	}

    @Override
	public ArrayList<Object> searchOne(GroupModel groupModel) {
		return groupRepository.findGroupByName(groupModel.getGroupName());
	}

	@Override
	public List<GroupModel> findAllGroupsById(int adminId) {
		List<GroupModel> groups = groupRepository.findGroupsByAdminId(adminId);
		
		return groups;
	}

	@Override
	public List<GroupMembersModel> findMyFriends(int userId) {
		
		List<GroupMembersModel> myGroups = groupMemberRepository.findByUserId(userId);
		
		System.out.println(myGroups.size());
		List<GroupMembersModel> myFriends = new ArrayList<GroupMembersModel>();
		
		for(GroupMembersModel groupMembersModel : myGroups){
			
			int groupId = groupMembersModel.getGroupId();
			List<GroupMembersModel> list = groupMemberRepository.findAllByGroupId(groupId);
			System.out.println(list.size());
			 for(GroupMembersModel lists : list){
				
				  myFriends.add(lists);
				  
				  System.out.println("friends"+lists.getUserId());
			 }
		}
		return myFriends;
	}
	//vishi
	@Override
	public boolean updateOne(GroupModel groupModel) {
		// TODO Auto-generated method stub
		groupRepository.updateOneForString(groupModel.getGroupId(),
				groupModel.getAbout(),
				groupModel.getGroupName(),
				groupModel.getClubclocation(),
				groupModel.getClubemail()
				);
		
		return true;
	}

}
