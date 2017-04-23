package edu.iu.club.connect.service.repository;

import edu.iu.club.connect.model.GroupModel;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

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

    
    @Query("select b from GroupModel b where b.groupId = :groupId")
    GroupModel getAdminById(@Param("groupId") int groupId);
    
    @Query("select groupName from GroupModel b where b.groupId = :groupId")
    String getGroupNameById(@Param("groupId") int groupId);

	@Query("select b from GroupModel b where b.groupId = :groupId")
    GroupModel findGroupById(@Param("groupId") int groupId);

	@Query("select b from GroupModel b where b.adminId = :adminId ")
	List<GroupModel> findGroupsByAdminId(@Param("adminId")int adminId);
	

	@Query("select b from GroupModel b where b.adminId = :adminId and b.groupId= :groupId")
	GroupModel isadmin(@Param("adminId")int userId,@Param("groupId")int groupId);

	@Modifying(clearAutomatically = true)
    @Transactional
	@Query("Update GroupModel b SET b.profilePic = :profilePic WHERE b.groupId = :groupId")
	void updateProfilePic(@Param("groupId") Integer groupId, @Param("profilePic")String profilePic);
	
	@Modifying(clearAutomatically = true)
    @Transactional
	@Query("Update GroupModel b SET b.backgroundPic = :backgroundPic WHERE b.groupId = :groupId")
	void updateBackgroundPic(@Param("groupId") Integer groupId, @Param("backgroundPic")String backgroundPic);

}
