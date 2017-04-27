package edu.iu.club.connect.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table (name = "likes")
public class LikeModel {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "likesequence")
    @SequenceGenerator(name ="likesequence",sequenceName = "likes_like_id_seq",allocationSize = 1)
    private @Column(name = "like_id")  Integer like_Id;
	private @Column(name = "post_id") Integer postId;
	private @Column(name = "user_id") Integer userId;
	public Integer getLike_Id() {
		return like_Id;
	}
	public void setLike_Id(Integer like_Id) {
		this.like_Id = like_Id;
	}
	public Integer getPostId() {
		return postId;
	}
	public void setPostId(Integer postId) {
		this.postId = postId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

}
