package edu.iu.club.connect.service.serviceInterface;

import java.util.List;

import edu.iu.club.connect.model.PostModel;


/**
 * Created by vishi on 2/19/2017.
 */
public interface PostService {

    public boolean saveOne(PostModel postModel);
    List<PostModel> findAll();

}