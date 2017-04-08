package edu.iu.club.connect.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.iu.club.connect.service.serviceImplementation.SearchServiceImplementation;

@Controller
public class SearchController {
	
	@Autowired 
	private SearchServiceImplementation searchServiceImplementation;
	
	@RequestMapping(value = "/search" , method = RequestMethod.GET)
	
	public @ResponseBody ArrayList<ArrayList<Object>> searchResult(@RequestParam("groupName") String search){
		
		System.out.println("i am in search controller" + search);
		
		ArrayList<ArrayList<Object>> finalList = new ArrayList<ArrayList<Object>>();
		
		ArrayList<Object> groupList = searchServiceImplementation.searchGroupByName(search);
		
		finalList.add(groupList);
		
		return finalList;
		
	}
	

}
