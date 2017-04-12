package edu.iu.club.connect.service.repository;

import edu.iu.club.connect.model.UserModel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by walia on 2/15/2017.
 */

/*
* This is the UserRepository where database queries are handled.
* */

@Repository
public interface UserRepository extends JpaRepository<UserModel,Integer>{

    /*
    * This query takes the emailId if user entered at time of Login and see whether it exists in database or not.
    * If its present then it returns the user details else it returns null.
    * */
    @Query("select b from UserModel b where b.emailId = :emailId")
    UserModel findOneByEmailId(@Param("emailId") String emailId);

    //returns an array list with first name and last name matches to user's search query
    @Query("select b from UserModel b where LOWER(b.firstName) LIKE LOWER(CONCAT('%',:firstName, '%')) OR LOWER(b.lastName) LIKE LOWER(CONCAT('%',:firstName,'%'))")
	ArrayList<Object> findUserByName(@Param("firstName") String firstName);
    
    @Modifying
    @Transactional
    @Query("update UserModel b SET b.firstName = :firstName , b.lastName= :lastName,b.password = :password, b.about = :about, b.profilePic = :profilePic  where b.emailId = :emailId")
    void updateOneForString(@Param("firstName") String firstName,@Param("lastName") String lastName,@Param("password") String password,@Param("about") String about,@Param("profilePic") String profilePic,@Param("emailId") String emailId);


	@Query("select b from UserModel b where b.emailId = :emailId")
    List<UserModel> checkEmail(@Param("emailId")String emailId);

	@Query("select b from UserModel b where b.emailId = :emailId AND b.question1 = :question1 AND b.question2 = :question2")
	List<UserModel> checkAnswers(@Param("emailId")String emailId,@Param("question1") String question1,@Param("question2") String question2);

	@Modifying(clearAutomatically = true)
    @Transactional
	@Query("Update UserModel b SET b.password = :password WHERE b.emailId = :emailId")
	void updatePassword(@Param("emailId")String emailId, @Param("password") String password);
	
	@Modifying(clearAutomatically = true)
    @Transactional
	@Query("Update UserModel b SET b.profilePic = :profilePic WHERE b.userId = :userId")
	void updateProfilePic(@Param("profilePic")String profilePic, @Param("userId") Integer userId);
	

    @Query("Select password from UserModel b where b.emailId = :emailId" )
    String findByUserEmailId(@Param("emailId") String emailId);

}
