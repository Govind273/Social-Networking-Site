package edu.iu.club.connect.service.repository;

import edu.iu.club.connect.model.PostModel;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.awt.print.Pageable;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

/**
 * Created by vishi on 2/19/2017.
 */

@Repository
public interface PostRepository extends JpaRepository<PostModel,Integer> {
	
    @Query("select b from PostModel b")
    ArrayList<PostModel> findAll();
  
    //DOES NOT WORK YET--returns array list of the posts where keywords match the user's search query
//  @Query("select b from PostModel b where LOWER(b.postDesc) LIKE LOWER(CONCAT('%',:postDesc, '%'))")
//	ArrayList<Object> findPostByName(@Param("postDesc") String postName);
    
    @Query(value="select b from PostModel b where b.group_Id = :group_Id order by b.postedDatetime desc")  
    List<PostModel> findTop10ByGroupIdOrderByPostedDatetimeDesc(@Param("group_Id") int groupId);
    

    @Query("select b from PostModel b where b.post_Id = :post_Id")
   PostModel findpostedBy(@Param("post_Id") int post_Id);

	@Query("select likes from PostModel b where b.post_Id = :post_Id")
    int getLikes(@Param("post_Id")int post_Id);

	@Modifying(clearAutomatically = true)
    @Transactional
    @Query("update PostModel b SET b.likes = :likes where b.post_Id= :post_Id")
	void updateLike(@Param("post_Id") int post_Id , @Param("likes")int likes);
    	
        
        
        
    	
    
}
