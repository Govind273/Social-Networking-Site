package edu.iu.club.connect.service.serviceImplementation;

import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.service.repository.GroupRepository;
import edu.iu.club.connect.service.serviceInterface.GroupService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by walia on 2/19/2017.
 */

@Service
public class GroupServiceImplementation implements GroupService {

    @Autowired
    GroupRepository groupRepository;
    @Override
    public boolean saveOne(GroupModel groupModel) {
    	System.out.println(groupModel.getAdminId());
        groupRepository.save(groupModel);
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
	public GroupModel findGroup(int groupId) {
		
		GroupModel group = groupRepository.findGroupById(groupId);
		return group;
	}
    

//    @Override
//	public GroupModel searchOne(GroupModel groupModel) {
//		return groupRepository.findGroupByName(groupModel.getGroupName());
//	}

    @Override
	public ArrayList<Object> searchOne(GroupModel groupModel) {
		return groupRepository.findGroupByName(groupModel.getGroupName());
	}

	@Override
	public List<GroupModel> findAllGroupsById(int adminId) {
		List<GroupModel> groups = groupRepository.findGroupsByAdminId(adminId);
		
		return groups;
	}


}
