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
	    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "likeSequence")
	    @SequenceGenerator(name ="likeSequence",sequenceName = "likes_like_id_seq",allocationSize = 1)
	    private @Column(name = "like_id")  Integer like_id;
	 	private @Column(name = "post_id") Integer post_id;
	 	private @Column(name = "user_id") Integer user_id;
		public Integer getLike_id() {
			return like_id;
		}
		public void setLike_id(Integer like_id) {
			this.like_id = like_id;
		}
		public Integer getPost_id() {
			return post_id;
		}
		public void setPost_id(Integer post_id) {
			this.post_id = post_id;
		}
		public Integer getUser_id() {
			return user_id;
		}
		public void setUser_id(Integer user_id) {
			this.user_id = user_id;
		}
}