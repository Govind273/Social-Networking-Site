package edu.iu.club.connect.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.iu.club.connect.service.serviceImplementation.SearchServiceImplementation;

@Controller
@SessionAttributes({"search"})
public class SearchController {
	
	@Autowired 
	private SearchServiceImplementation searchServiceImplementation;
	
	@RequestMapping(value = "/search" , method = RequestMethod.GET)
	
	public String searchResult(@RequestParam("groupName") String search , ModelMap modelMap){
		
		System.out.println("i am in search controller" + search);
		
		//declare array for search results
		ArrayList<ArrayList<Object>> finalList = new ArrayList<ArrayList<Object>>();
		
		//declare sub-arrays for search of group, user, post and execute SQL code in searchServiceImplementation
		ArrayList<Object> groupList = searchServiceImplementation.searchGroupByName(search);
//		ArrayList<Object> userList = searchServiceImplementation.searchUserByName(search);
//		ArrayList<Object> postList = searchServiceImplementation.searchPostByName(search);
		
		
		//add sub-arrays to the main search result array
//		finalList.add(groupList);
//		finalList.add(userList);
//		finalList.add(postList);
	
		modelMap.put("search", groupList);
		
		//return main array
		return "displaySearch";
		
	}
	

}
