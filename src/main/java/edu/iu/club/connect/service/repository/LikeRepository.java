package edu.iu.club.connect.service.repository;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.iu.club.connect.model.LikeModel;
import edu.iu.club.connect.model.PostModel;

@Repository
public interface LikeRepository extends JpaRepository<LikeModel,Integer> {

	@Query("select b from LikeModel b where b.post_id = :post_id AND b.user_id = :user_id")
	List<LikeModel> hasLiked(@Param("post_id")int post_id, @Param("user_id")int user_id);
	
    	
}