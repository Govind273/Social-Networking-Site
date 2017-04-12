package edu.iu.club.connect.service.serviceImplementation;

import edu.iu.club.connect.model.UserModel;
import edu.iu.club.connect.service.repository.UserRepository;
import edu.iu.club.connect.service.serviceInterface.UserService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by walia on 2/15/2017.
 */

/*
* The UserServiceImplementation class implements the methods of UserService interface.
* This class provides "services" to connect the repository and controller
* */
@Service
public class UserServiceImplementation implements UserService{

    @Autowired
    UserRepository userRepository;

    /*
    * This method takes the details of users and pass them to repository to save them in database.
    * We do not require seperate query for save as "save" method is itself sufficient to do that.
    * */

    @Override
    public boolean saveOne(UserModel userModel) {
        userRepository.save(userModel);
        return true;
    }

    /*
    * This method takes credentials added at time of login and pass them to repository to find user.
    * */
    @Override
    public UserModel findOne(UserModel userModel) {

        System.out.println(" email id "+userModel.getEmailId());
      return  userRepository.findOneByEmailId(userModel.getEmailId());
    }

    /*
    * This service takes the updated values entered by user and passes them to repository.
    * */
    @Override
    public boolean updateOne(UserModel userModel) {

        //System.out.println(" email id "+userModel.getEmailId());

        System.out.println("I am here");

        userRepository.updateOneForString(userModel.getFirstName(),userModel.getLastName(),userModel.getPassword(),userModel.getAbout(),userModel.getProfilePic(),userModel.getEmailId());
        return  true;

    }

	@Override

	public String recoverPassword(UserModel userModel) {
		
		String response = null;
		
		List<UserModel> checkEmail = userRepository.checkEmail(userModel.getEmailId());
		if(checkEmail != null && !checkEmail.isEmpty()) {
			
			List<UserModel> answers = userRepository.checkAnswers(userModel.getEmailId() , userModel.getQuestion1() , userModel.getQuestion2());
			if(answers !=null && !answers.isEmpty()){
				
				response = "true";
			}
			else{
				
				response = "false";
			}

		}
		else{
			
			response = "email does not exist";
		}
		
		return response;
		
	}

	@Override
	public boolean changePassword(String emailId, String password) {
		
		userRepository.updatePassword(emailId , password);
		
		
			return true;}
		

	public String getPassword(UserModel userModel) {
		System.out.println("in forget password");
		String password = null;
		
		try {
			password = userRepository.findByUserEmailId(userModel.getEmailId());
			
		} catch ( Exception e){
			
		}
		return password;

	}

	@Override
	public boolean storeProfilePic(Integer userId, String bucket) {
		// TODO Auto-generated method stub
		
		userRepository.updateProfilePic(bucket, userId);
		return false;
	}

}
