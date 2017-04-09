package edu.iu.club.connect.service.repository;

import edu.iu.club.connect.model.PostModel;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

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
    
//    @Query("select b from PostModel b where b.group_Id = :group_Id")
//    List<PostModel> findTop10ByGroupIdAndOrderByLevelDesc(@Param("group_Id") int groupId);
}
