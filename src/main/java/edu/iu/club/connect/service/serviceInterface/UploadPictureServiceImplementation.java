package edu.iu.club.connect.service.serviceInterface;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.iu.club.connect.service.repository.GroupRepository;
import edu.iu.club.connect.service.repository.UserRepository;

@Service
public class UploadPictureServiceImplementation implements UploadPictureService{
	
	@Autowired
    UserRepository userRepository;
	
	@Autowired 
	GroupRepository groupRepository;
	
	@Override
	public boolean storeProfilePic(Integer userId, String bucket) {
		
		userRepository.updateProfilePic(bucket, userId);
		return false;
	}

	@Override
	public boolean storeBackgroundPic(Integer userId, String storedPathOnCloudnary) {
		
		userRepository.updateBackgroundPic(storedPathOnCloudnary, userId);
		return false;
	}

	@Override
	public boolean storeGroupBackgroundPic(Integer groupId, String storedPathOnCloudnary) {
		System.out.println("inside group background pic upload service");
		groupRepository.updateBackgroundPic(groupId , storedPathOnCloudnary);
		return false;
	}

	@Override
	public boolean storeGroupProfilePic(Integer groupId, String storedPathOnCloudnary) {
		groupRepository.updateProfilePic(groupId , storedPathOnCloudnary);
		return false;
	}

}
