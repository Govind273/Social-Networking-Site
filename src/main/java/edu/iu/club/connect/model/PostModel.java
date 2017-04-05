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
	    private @Column(name = "post_description") String postDesc;
	    private @Column(name = "posted_by")  Integer postedby;

	    private @Column(name = "group_id")  Integer group_Id;
	    private @Column(name = "posted_datetime")  Date postedDatetime;

	    public PostModel(){}
	    public Integer getPostedby() {
			return postedby;
		}
		public void setPostedby(Integer postedby) {
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
