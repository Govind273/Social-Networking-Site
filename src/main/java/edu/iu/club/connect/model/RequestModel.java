package edu.iu.club.connect.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "request")
public class RequestModel {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "requestSequence")
    @SequenceGenerator(name ="requestSequence",sequenceName = "request_request_id_seq",allocationSize = 1)
	private @Column(name = "request_id") Integer requestId;
	private @Column(name = "group_id")  Integer groupId;
    private @Column(name = "user_id") Integer userId;
    private @Column(name = "group_name") String groupName;
    private @Column(name = "admin_id") Integer adminId;
    private @Column(name = "profile_pic") String profilePic;
    
    
    public String getProfilePic() {
		return profilePic;
	}
	public void setProfilePic(String profilePic) {
		this.profilePic = profilePic;
	}
	public Integer getRequestId() {
		return requestId;
	}
	public void setRequestId(Integer requestId) {
		this.requestId = requestId;
	}
	public Integer getGroupId() {
		return groupId;
	}
	public void setGroupId(Integer groupId) {
		this.groupId = groupId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public Integer getAdminId() {
		return adminId;
	}
	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}
	
	
    	

}
