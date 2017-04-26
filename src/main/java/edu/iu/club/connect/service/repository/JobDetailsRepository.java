package edu.iu.club.connect.service.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.iu.club.connect.model.JobDetailsModel;

@Repository
public interface JobDetailsRepository extends JpaRepository<JobDetailsModel,Integer>{

	@Query("select b from JobDetailsModel b where b.userId = :userId ")
	List<JobDetailsModel> findGroupsByUserId(@Param("userId")int userId);

	
	 @Modifying
	    @Transactional
	@Query("update JobDetailsModel b SET b.jobDesc = :jobDesc , b.company= :company,b.position = :position, b.skills = :skills  where b.jobdetails_Id = :jobdetails_Id")
	void updateOne( @Param("jobDesc")String jobDesc, @Param("company")String  company, @Param("jobdetails_Id")int  jobdetails_Id, @Param("position")String position,
			@Param("skills")String skills);
}
