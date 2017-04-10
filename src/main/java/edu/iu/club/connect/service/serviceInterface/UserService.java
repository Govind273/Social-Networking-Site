package edu.iu.club.connect.service.serviceInterface;

import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.UserModel;

/**
 * Created by walia on 2/15/2017.
 */

/*
* This is the interface class which has abstract methods.
* */
public interface UserService {

 public boolean saveOne(UserModel userModel);
 public UserModel findOne(UserModel userModel);
 public boolean updateOne(UserModel userModel);
public String recoverPassword(UserModel userModel);
public boolean changePassword(String emailId, String password);
 
}
