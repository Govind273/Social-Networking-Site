package edu.iu.club.connect.service.serviceInterface;

import edu.iu.club.connect.model.UserModel;

/**
 * Created by walia on 2/15/2017.
 */
public interface UserService {

 public boolean saveOne(UserModel userModel);
 public UserModel findOne(UserModel userModel);
 public UserModel updateOne(String argument, UserModel userModel);
}
