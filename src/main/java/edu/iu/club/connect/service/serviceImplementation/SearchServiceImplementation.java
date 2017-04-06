package edu.iu.club.connect.service.serviceImplementation;

import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.iu.club.connect.service.repository.GroupRepository;
import edu.iu.club.connect.service.serviceInterface.SearchService;

@Service
public class SearchServiceImplementation implements SearchService{
	
	@Autowired 
	private GroupRepository groupRepository;

	@Override
	public ArrayList<Object> searchGroupByName(String search) {
		
		System.out.println("i am in service search" + search);
		
		if(search == null){
			return null;
		}
		
		ArrayList<Object> list = groupRepository.findGroupByName(search);
		
		//System.out.println(Arrays.toString(list));
		return list;
	}

}
