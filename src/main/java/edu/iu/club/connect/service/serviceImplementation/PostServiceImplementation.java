package edu.iu.club.connect.service.serviceImplementation;
import org.springframework.data.domain.PageRequest;
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

    //Nick commented out code; otherwise it failed to build--The method findTop10ByGroupIdAndOrderByLevelDesc(Integer) is undefined for the type PostRepository
    @Override
	public List<PostModel> search(PostModel postModel) {
		return postRepository.findTop10ByGroupIdOrderByPostedDatetimeDesc( postModel.getGroupId());
//		return null;
	}
	@Override
	public PostModel getPostedby(int post_id) {
		
		return postRepository.findpostedBy(post_id);
	}  
}
