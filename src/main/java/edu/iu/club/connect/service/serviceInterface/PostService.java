package edu.iu.club.connect.service.serviceInterface;

import java.util.List;

import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.PostModel;


/**
 * Created by vishi on 2/19/2017.
 */
public interface PostService {

    public boolean saveOne(PostModel postModel);
    List<PostModel> findAll();
	public void deleteById(int post_id);
	 public List<PostModel> search(PostModel postModel);
	 public PostModel getPostedby(int post_id);
}
