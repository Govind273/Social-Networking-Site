package edu.iu.club.connect.controller;

import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.service.serviceInterface.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by walia on 2/19/2017.
 */

@Controller
public class GroupController {

    @Autowired
    GroupService groupService;
    @RequestMapping(value = "/createGroup")
    public String creategroup(){
        return "group";
    }

    @RequestMapping(value = "/groupInformation",method = RequestMethod.POST)
    public String createGroup(GroupModel groupModel){
        groupService.saveOne(groupModel);
        return "profile";

    }
}
