package edu.iu.club.connect.service.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.iu.club.connect.model.GroupMembersModel;


@Repository
public interface GroupMemberRepository extends JpaRepository<GroupMembersModel,Integer> {

	@Query("select b from GroupMembersModel b where b.userId = :userId AND b.groupId = :groupId" )
	List<GroupMembersModel> isAlreadyJoined(@Param("userId") int userId,@Param("groupId")  int groupId);

	@Query("select  b from GroupMembersModel b where b.userId = :userId")
	List<GroupMembersModel> findByUserId(@Param("userId") int userId);

	@Query("select b from GroupMembersModel b where b.groupId = :groupId")
	List<GroupMembersModel> findAllByGroupId(@Param("groupId") int groupId);

	@Query("select userId from GroupMembersModel b where b.groupId = :groupId")
	List<Integer> findAll(@Param("groupId")int groupId);
	

	@Query("select  distinct b.groupId from GroupMembersModel b where b.userId = :userId")
	List<Integer> findgroupsbyUserId(@Param("userId") int userId);
	
	

}
