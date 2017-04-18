package edu.iu.club.connect.service.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import edu.iu.club.connect.model.MessageModel;

public interface MessageRepository extends JpaRepository<MessageModel,Integer>{
	
	@Query("select b from MessageModel b where b.senderId = :senderId AND b.receiverId = :receiverId OR b.senderId = :receiverId AND b.receiverId = :senderId")
	List<MessageModel> getMessagesOrderByMessageTimeDesc(@Param("senderId") int senderId , @Param("receiverId") int receiverId);

	@Query("select senderId from MessageModel b where b.receiverId = :receiverId")
	Set<Integer> getAllMessageList(@Param("receiverId") int receiverId);

}
