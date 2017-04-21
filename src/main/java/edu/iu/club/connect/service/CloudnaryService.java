package edu.iu.club.connect.service;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@Service
public class CloudnaryService {

	public String soemthing(File fileToBeUploaded) throws IOException{
		
		Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
				  "cloud_name", "dtrkytk4b",
				  "api_key", "858779618391163",
				  "api_secret", "Zxws0xP0B84Pym32waXPgi6DzNo"));
		
		Map  uploadResult = cloudinary.uploader().upload(fileToBeUploaded, ObjectUtils.emptyMap());
		return (String) uploadResult.get("url");
	}
}
