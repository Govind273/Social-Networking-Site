package edu.iu.club.connect.service.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.iu.club.connect.model.JobDetailsModel;

@Repository
public interface JobDetailsRepository extends JpaRepository<JobDetailsModel,Integer>{

	@Query("select b from JobDetailsModel b where b.userId = :userId ")
	List<JobDetailsModel> findGroupsByUserId(@Param("userId")int userId);
}