package edu.iu.club.connect.service.serviceInterface;

public interface UploadPictureService {
	
	public boolean storeProfilePic(Integer userId, String bucket);

	public boolean storeBackgroundPic(Integer userId, String storedPathOnCloudnary);

	public boolean storeGroupBackgroundPic(Integer groupId, String storedPathOnCloudnary);

	public boolean storeGroupProfilePic(Integer groupId, String storedPathOnCloudnary);

}
