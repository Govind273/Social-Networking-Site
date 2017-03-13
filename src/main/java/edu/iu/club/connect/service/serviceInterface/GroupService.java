package edu.iu.club.connect.service.serviceInterface;

import edu.iu.club.connect.model.GroupModel;

import java.util.ArrayList;

/**
 * Created by walia on 2/19/2017.
 */
public interface GroupService {

    public boolean saveOne(GroupModel groupModel);
    public ArrayList<GroupModel> findOne();
    public GroupModel searchOne(GroupModel groupModel);
}
