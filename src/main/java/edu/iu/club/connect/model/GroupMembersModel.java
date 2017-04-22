package edu.iu.club.connect.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "group_members")
public class GroupMembersModel {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "groupMembersSequence")
    @SequenceGenerator(name ="groupMembersSequence",sequenceName = "group_members_group_list_id_seq",allocationSize = 1)
	private @Column(name = "group_list_id") Integer friendId;
	private @Column(name = "group_name") String groupName;
	private @Column( name = "group_id") Integer groupId;
	private @Column(name = " user_id") Integer userId;
	//****vishi
	public GroupMembersModel(int user_id, int group_id) {
		// TODO Auto-generated constructor stub
		this.groupId=group_id;
		this.userId=user_id;
	}
	
	public GroupMembersModel() {
		super();
	}

	public Integer getFriendId() {
		return friendId;
	}
	public void setFriendId(Integer friendId) {
		this.friendId = friendId;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
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

}
