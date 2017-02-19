package edu.iu.club.connect.service.serviceImplementation;

import edu.iu.club.connect.model.UserModel;
import edu.iu.club.connect.service.repository.UserRepository;
import edu.iu.club.connect.service.serviceInterface.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by walia on 2/15/2017.
 */
@Service
public class UserServiceImplementation implements UserService{

    @Autowired
    UserRepository userRepository;

    @Override
    public boolean saveOne(UserModel userModel) {
        userRepository.save(userModel);
        return true;
    }

    @Override
    public UserModel findOne(UserModel userModel) {

        System.out.println(" email id "+userModel.getEmailId());
      return  userRepository.findOneByEmailId(userModel.getEmailId());
    }

    @Override
    public UserModel updateOne(String argument,UserModel userModel) {

//        System.out.println(" email id "+userModel.getEmailId());
//
//        return  userRepository.updateOneForString(argument,userModel.getEmailId());
        return null;
    }

}
