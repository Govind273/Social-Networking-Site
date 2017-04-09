package edu.iu.club.connect.service.repository;

import edu.iu.club.connect.model.GroupModel;
import edu.iu.club.connect.model.UserModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

/**
 * Created by walia on 2/19/2017.
 */

@Repository
public interface GroupRepository extends JpaRepository<GroupModel,Integer> {

    @Query("select b from GroupModel b")
    ArrayList<GroupModel> findAll();
    
    //returns array list of group names that match the user's search query
    @Query("select b from GroupModel b where LOWER(b.groupName) LIKE LOWER(CONCAT('%',:groupName, '%'))")
	ArrayList<Object> findGroupByName(@Param("groupName") String groupName);
}
