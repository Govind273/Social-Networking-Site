package edu.iu.club.connect.service.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.iu.club.connect.model.EducationalDetailsModel;



@Repository
public interface EducationDetailsRepository extends JpaRepository<EducationalDetailsModel,Integer>{

	@Query("select b from EducationalDetailsModel b where b.userId = :userId ")
	List<EducationalDetailsModel> findByUserId(@Param("userId")int userId);

	
	@Modifying
	@Transactional
	@Query("update EducationalDetailsModel b SET b.description = :description , b.major= :major,b.school = :school, b.skills = :skills  where b.eduDetailsId = :eduDetailsId")
	void updateOne( @Param("description")String description, @Param("major")String  major, @Param("eduDetailsId")int  eduDetailsId, @Param("school")String school,
			@Param("skills")String skills);
}
