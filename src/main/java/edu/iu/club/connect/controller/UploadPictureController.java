
package edu.iu.club.connect.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.iu.club.connect.service.CloudnaryService;
import edu.iu.club.connect.service.MultipartToFile;
import edu.iu.club.connect.service.serviceInterface.UploadPictureService;


@Controller
public class UploadPictureController {
	
	@Autowired CloudnaryService CloudnaryService;
	@Autowired MultipartToFile multipartFile;
	@Autowired UploadPictureService uploadPictureService;
	
	@RequestMapping(value="/uploadProfilePhoto/{userId}" , method=RequestMethod.POST)
	public String uploadProfilePhoto(@PathVariable("userId") Integer userId,@RequestParam("file") MultipartFile uploadfile) throws IOException{
		
		System.out.println(" ------------------------------------------>>>>>>>>>>>>>>");

		String storedPathOnCloudnary = CloudnaryService.uploadPhoto(multipartFile.convertToFile(uploadfile));
		
		System.out.println("path to be used -- "+storedPathOnCloudnary);

		uploadPictureService.storeProfilePic(userId, storedPathOnCloudnary); 
		multipartFile.deleteFile(uploadfile.getOriginalFilename());
		return "redirect:/profile";
	}
	
	@RequestMapping(value="/uploadBackgroundPhoto/{userId}" , method=RequestMethod.POST)
	public String uploadBackgroundPhoto(@PathVariable("userId") Integer userId,@RequestParam("file") MultipartFile uploadfile) throws IOException{
		
		System.out.println(" ------------------------------------------>>>>>>>>>>>>>>");

		String storedPathOnCloudnary = CloudnaryService.uploadPhoto(multipartFile.convertToFile(uploadfile));
		
		System.out.println("path to be used -- "+storedPathOnCloudnary);

		uploadPictureService.storeBackgroundPic(userId, storedPathOnCloudnary); 
		multipartFile.deleteFile(uploadfile.getOriginalFilename());
		return "redirect:/profile";
	}
	
	@RequestMapping(value="/uploadGroupBackgroundPhoto/{groupId}/{userId}" , method=RequestMethod.POST)
	public String uploadGroupBackgroundPhoto(@PathVariable("groupId") Integer groupId,@PathVariable("userId") Integer userId,@RequestParam("file") MultipartFile uploadfile) throws IOException{
		
		System.out.println(" ------------------------------------------>>>>>>>>>>>>>>");

		String storedPathOnCloudnary = CloudnaryService.uploadPhoto(multipartFile.convertToFile(uploadfile));
		
		System.out.println("path to be used -- "+storedPathOnCloudnary);

		uploadPictureService.storeGroupBackgroundPic(groupId, storedPathOnCloudnary); 
		multipartFile.deleteFile(uploadfile.getOriginalFilename());
		return "redirect:/groupPage/"+groupId+"/"+userId;
	}
	
	@RequestMapping(value="/uploadGroupProfilePhoto/{groupId}/{userId}" , method=RequestMethod.POST)
	public String uploadGroupProfilePhoto(@PathVariable("groupId") Integer groupId,@PathVariable("userId") Integer userId,@RequestParam("file") MultipartFile uploadfile) throws IOException{
		
		System.out.println(" ------------------------------------------>>>>>>>>>>>>>>");

		String storedPathOnCloudnary = CloudnaryService.uploadPhoto(multipartFile.convertToFile(uploadfile));
		
		System.out.println("path to be used -- "+storedPathOnCloudnary);

		uploadPictureService.storeGroupProfilePic(groupId, storedPathOnCloudnary); 
		multipartFile.deleteFile(uploadfile.getOriginalFilename());
		return "redirect:/groupPage/"+groupId+"/"+userId;
	}
	
	
	
	
	

}
