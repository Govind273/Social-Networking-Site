package edu.iu.club.connect.model;

import java.util.Date;

import javax.persistence.*;

/**
 * Created by vishi on 2/19/2017.
 */

@Entity
@Table (name = "posts")
public class PostModel {

	 @Id
	    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "postSequence")
	    @SequenceGenerator(name ="postSequence",sequenceName = "posts_post_id_seq",allocationSize = 1)
	    private @Column(name = "post_id")  Integer post_Id;
	    private @Column(name = "post_description") String postDesc; //used in search feature
	    private @Column(name = "posted_by")  int postedby;
	    private @Column(name = "postbyname")  String postbyname;
	    
		private @Column(name = "group_id")  Integer group_Id;
	    private @Column(name = "posted_datetime")  Date postedDatetime;
	    
	    private @Column(name = "likes") Integer likes;
	    
		public Integer getLikes() {
			return likes;
		}
		public void setLikes(Integer likes) {
			this.likes = likes;
		}
		public Integer getPost_Id() {
			return post_Id;
		}
		public void setPost_Id(Integer post_Id) {
			this.post_Id = post_Id;
		}
		public String getPostbyname() {
			return postbyname;
		}
		public void setPostbyname(String postbyname) {
			this.postbyname = postbyname;
		}
		public Integer getGroup_Id() {
			return group_Id;
		}
		public void setGroup_Id(Integer group_Id) {
			this.group_Id = group_Id;
		}
	    public PostModel(){}
	    public int getPostedby() {
			return postedby;
		}
		public void setPostedby(int postedby) {
			this.postedby = postedby;
		}
	    
		public Integer getPostId() {
			return post_Id;
		}
		public void setPostId(Integer postId) {
			this.post_Id = postId;
		}
		public String getPostDesc() {
			return postDesc;
		}
		public void setPostDesc(String postDesc) {
			this.postDesc = postDesc;
		}
		public Integer getGroupId() {
			return group_Id;
		}
		public void setGroupId(Integer groupId) {
			this.group_Id = groupId;
		}
		public Date getPostedDatetime() {
			return postedDatetime;
		}
		public void setPostedDatetime(Date postedDatetime) {
			this.postedDatetime = postedDatetime;
		}
		public PostModel(Integer postId) {
			super();
			this.post_Id = postId;
		}

}
