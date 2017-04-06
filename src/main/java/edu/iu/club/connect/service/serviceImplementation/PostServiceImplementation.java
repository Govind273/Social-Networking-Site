package edu.iu.club.connect.service.serviceImplementation;

import edu.iu.club.connect.model.PostModel;
import edu.iu.club.connect.service.repository.PostRepository;
//import edu.iu.club.connect.service.serviceInterface.GroupService;
import edu.iu.club.connect.service.serviceInterface.PostService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * Created by vishi on 2/19/2017.
 */

@Service
public class PostServiceImplementation implements PostService {

    @Autowired
    PostRepository postRepository;
    @Override
    public boolean saveOne(PostModel PostModel) {
    	postRepository.save(PostModel);
        return true;

    }
    @Override
    public List<PostModel> findAll() {
        return this.postRepository.findAll();
    }
    @Override
    public void deleteById(int post_id) {
    	postRepository.delete(post_id);

    }
	@Override
	public List<PostModel> search(PostModel postModel) {
		return postRepository.findTop10ByGroupIdAndOrderByLevelDesc(postModel.getGroupId());
	}
    
    
  
}
