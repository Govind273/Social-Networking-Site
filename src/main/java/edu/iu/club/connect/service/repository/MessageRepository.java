package edu.iu.club.connect.service.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.iu.club.connect.model.MessageModel;
@Repository
public interface MessageRepository extends JpaRepository<MessageModel,Integer>{
	
	@Query("select b from MessageModel b where b.senderId = :senderId AND b.receiverId = :receiverId OR b.senderId = :receiverId AND b.receiverId = :senderId")
	List<MessageModel> getMessagesOrderByMessageTimeDesc(@Param("senderId") int senderId , @Param("receiverId") int receiverId);

	@Query("select senderId from MessageModel b where b.receiverId = :receiverId")
	Set<Integer> getAllMessageList(@Param("receiverId") int receiverId);

}

/*
<%-- <form action="/likeThePost/${post.postId }/${user.userId }" method = "get">
<button type="submit" 
	class="w3-button w3-theme-d1 w3-margin-bottom">
	<i class="fa fa-thumbs-up"></i> Like (${post.Likes})
</button>
</form> --%>*/