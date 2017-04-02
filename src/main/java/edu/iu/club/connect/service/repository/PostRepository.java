package edu.iu.club.connect.service.repository;

import edu.iu.club.connect.model.PostModel;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

/**
 * Created by vishi on 2/19/2017.
 */

@Repository
public interface PostRepository extends JpaRepository<PostModel,Integer> {
	
    @Query("select b from PostModel b")
    ArrayList<PostModel> findAll();
    
}
