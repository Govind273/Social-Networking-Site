package edu.iu.club.connect.service.serviceInterface;



import edu.iu.club.connect.model.GroupMembersModel;
import edu.iu.club.connect.model.GroupModel;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Created by walia on 2/19/2017.
 */
public interface GroupService {

    public boolean saveOne(GroupModel groupModel);
    public ArrayList<GroupModel> findOne();

    //public GroupModel searchOne(GroupModel groupModel);

	public GroupModel findGroup(int groupId);


    public ArrayList<Object> searchOne(GroupModel groupModel);
    public GroupModel getAdminId(int groupId );
	public List<GroupModel> findAllGroupsById(int adminId);
	public List<GroupMembersModel> findMyFriends(int userId);
	public boolean isadmin(int userId,int groupId);
	 public boolean updateOne(GroupModel groupModel);
}
