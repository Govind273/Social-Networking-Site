package edu.iu.club.connect.service.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.iu.club.connect.model.RequestModel;

@Repository
public interface RequestRepository extends JpaRepository<RequestModel,Integer> {

   @Query("select b from RequestModel b where b.userId = :userId AND b.groupId = :groupId")
   List<RequestModel> checkRequest(@Param("userId") int userId, @Param("groupId") int groupId);
   
   @Query("select b from RequestModel b where b.adminId = :adminId")
   List<RequestModel> findById(@Param("adminId") int adminId);

   
   @Query("select b from RequestModel b where b.userId = :userId AND b.groupId = :groupId")
   List<RequestModel> findRequestById(@Param("userId") int userId, @Param("groupId") int groupId);

   @Query("select b from RequestModel b where b.requestId = :requestId")
   List<RequestModel> getRequestById(@Param("requestId") int requestId);


   
}

