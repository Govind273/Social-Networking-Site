package edu.iu.club.connect.controller;

import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.PostModel;
import edu.iu.club.connect.service.serviceInterface.PostService;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


/**
 * Created by vishi on 2/19/2017.
 */

@Controller
@SessionAttributes ({"groupSearched", "user_id" })
public class PostController {
	
    @Autowired
    PostService postService;

    @RequestMapping(value = "/createPost/{group_id}/{user_id}",method = RequestMethod.POST  )
    public ModelAndView createPost( @PathVariable("group_id") int group_id, @PathVariable("user_id") int user_id,PostModel postModel){
    	ModelAndView mv1=new ModelAndView("groupsProfile");
    	postModel.setGroupId(group_id);
    	postModel.setPostedby(user_id);
    	//System.out.println("im in");
    	DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    	Date date = new Date();
    	postModel.setPostedDatetime(date);
    	postService.saveOne(postModel);
    	List<PostModel> ps= postService.search(postModel);
    	ps.subList(10,ps.size()).clear();
    	mv1.addObject("ps",ps);
        return mv1;
        }
    
    
    @RequestMapping(value = "/deletePost/{post_id}/{user_id}",method = RequestMethod.POST)
    public ModelAndView deletePost( @PathVariable("post_id") int post_id, @PathVariable("user_id") int user_id,PostModel postModel){
    	ModelAndView mv=new ModelAndView("groupsProfile");
    	postModel.setPostId(post_id);
    	PostModel pm=postService.getPostedby(post_id);
    	int postby=pm.getPostedby();
    	if (postby == user_id){
    		postService.deleteById(post_id);
    	}
    	List<PostModel> ps= postService.search(postModel);
    	ps.subList(10,ps.size()).clear();
    	mv.addObject("ps",ps);
        return mv;
        }
   
    @RequestMapping(value = "/getallposts/{group_id}",method = RequestMethod.GET)
    public ModelAndView listPost( @PathVariable("group_id") int group_id, PostModel postModel){
    	ModelAndView mv=new ModelAndView("groupsProfile");
    	postModel.setGroupId(group_id);
    	List<PostModel> ps= postService.search(postModel);
    	ps.subList(10,ps.size()).clear();
    	System.out.println(ps);
    	mv.addObject("ps",ps);  	
        return mv;
        }
   

}
