package edu.iu.club.connect.service.repository;

import edu.iu.club.connect.model.UserModel;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by walia on 2/15/2017.
 */

@Repository
public interface UserRepository extends JpaRepository<UserModel,Integer>{

    @Query("select b from UserModel b where b.emailId = :emailId")
    UserModel findOneByEmailId(@Param("emailId") String emailId);

//    @Query("update UserModel SET :columnName = :columnNameValue  where b.emailId = :emailId")
//    UserModel updateOneForString(@Param("columnName") String columnName,@Param("columnNameValue") String columnNameValue,@Param("emailId") String emailId);
}
