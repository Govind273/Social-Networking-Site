package edu.iu.club.connect.service.serviceImplementation;

import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.iu.club.connect.service.repository.GroupRepository;
import edu.iu.club.connect.service.repository.UserRepository;
import edu.iu.club.connect.service.repository.PostRepository;
import edu.iu.club.connect.service.serviceInterface.SearchService;

@Service
public class SearchServiceImplementation implements SearchService{
	
	@Autowired 
	private GroupRepository groupRepository;

	//returns array list of gruop names that is returned by search function
	@Override
	public ArrayList<Object> searchGroupByName(String search) {
		
		System.out.println("i am in service search looking for groups" + search);
		
		if(search == null){
			return null;
		}
		
		ArrayList<Object> list = groupRepository.findGroupByName(search);
		
		//System.out.println(Arrays.toString(list));
		return list;
	}
	
	@Autowired 
	private UserRepository userRepository;
	
	//returns array list of user first and last names that is returned by search function
	@Override
	public ArrayList<Object> searchUserByName(String search) {
		
		System.out.println("i am in service search looking for users" + search);
		
		if(search == null){
			return null;
		}
		
		ArrayList<Object> list = userRepository.findUserByName(search);
		
		//System.out.println(Arrays.toString(list));
		return list;
	}
	

	@Autowired 
	private PostRepository postRepository;

	//returns array list of posts based on their text and what matches the user's search query. **ONLY RETURNS NULL**
	@Override
 	public ArrayList<Object> searchPostByName(String search) {
		
		System.out.println("i am in service search looking for cool posts" + search);
		
		if(search == null){
			return null;
		}
		
		ArrayList<Object> list = null; //postRepository.findPostByName(search); ****Nick set this to null; otherwise it failed. Needs corrected in future
		
		//System.out.println(Arrays.toString(list));
		return list;
	}

}
