package edu.iu.club.connect.service.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.iu.club.connect.model.LikeModel;


@Repository
public interface LikeRepository extends JpaRepository<LikeModel,Integer> {

	@Query("select b from LikeModel where b.postId = :postId AND b.userId = :userId")
	List<LikeModel> hasLiked(@Param("postId")int postId,@Param("userId") int userId);
	
   
    	
    
}
