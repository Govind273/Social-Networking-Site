package edu.iu.club.connect.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.iu.club.connect.service.serviceImplementation.SearchServiceImplementation;

@Controller
@SessionAttributes({"search" , "searched_string" , "search_user" , "search_group" , "advanceSearch_user" , "advanceSearch_group"})
public class SearchController {
	
	@Autowired 
	private SearchServiceImplementation searchServiceImplementation;
	
	@RequestMapping(value = "/search" , method = RequestMethod.GET)
	
	public String searchResult(@RequestParam("search_value") String searching , ModelMap modelMap){
		
		System.out.println("i am in search controller" + searching);
		
		modelMap.put("searched_string", searching);
		
		//declare array for search results
		ArrayList<ArrayList<Object>> finalList = new ArrayList<ArrayList<Object>>();
		
		//declare sub-arrays for search of group, user, post and execute SQL code in searchServiceImplementation
		ArrayList<Object> groupList = searchServiceImplementation.searchGroupByName(searching);
		ArrayList<Object> userList = searchServiceImplementation.searchUserByName(searching);
		
		System.out.println("got the result");
//		ArrayList<Object> postList = searchServiceImplementation.searchPostByName(search);
		
		
		//add sub-arrays to the main search result array
		finalList.add(groupList);
		finalList.add(userList);
		
		System.out.println("added the result");
//		finalList.add(postList);
	
		modelMap.put("search_user", userList);
		modelMap.put("search_group", groupList);
		modelMap.put("search", finalList);
		
		//return main array
		return "displaySearch";
		
	}
	
	@RequestMapping(value = "/advancedSearchUser/{search}", method = RequestMethod.GET)
	public String advancedSearchUser(@PathVariable("search") String search, ModelMap modelMap){
		
		System.out.println("inside advanced search");
		
			System.out.println("inside user search");
			ArrayList<Object> userList = searchServiceImplementation.searchUserByName(search);
			
			System.out.println("search complete inside user");
			modelMap.put("advanceSearch_user", userList);
			return "UserSearch";

		
	}
	
	@RequestMapping(value = "/advancedSearchGroup/{search}", method = RequestMethod.GET)
	public String advancedSearchGroup(@PathVariable("search") String search  , ModelMap modelMap){
		
		System.out.println("inside advanced search");
			System.out.println("inside user search");
			ArrayList<Object> groupList = searchServiceImplementation.searchGroupByName(search);
			
			System.out.println("search complete inside user");
			modelMap.put("advanceSearch_group", groupList);
			return "GroupSearch";

		
	}
	
}