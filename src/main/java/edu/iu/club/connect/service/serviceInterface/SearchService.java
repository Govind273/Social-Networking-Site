package edu.iu.club.connect.service.serviceInterface;

import java.util.ArrayList;

public interface SearchService {
	
	public ArrayList<Object> searchGroupByName(String search);
	public ArrayList<Object> searchUserByName(String search);
	public ArrayList<Object> searchPostByName(String search);
}
