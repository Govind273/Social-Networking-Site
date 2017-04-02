package edu.iu.club.connect.model;

import javax.persistence.*;

/**
 * Created by walia on 2/19/2017.
 */

@Entity
@Table (name = "groups")
public class GroupModel {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "groupsSequence")
    @SequenceGenerator(name ="groupsSequence",sequenceName = "groups_group_id_seq",allocationSize = 1)
    private @Column(name = "group_id")  Integer groupId;
    private @Column(name = "group_name") String groupName;
    private @Column(name = "group_about") String about;
    private @Column(name = "admin_id") Integer admin_id;

    public Integer getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(Integer admin_id) {
		this.admin_id = admin_id;
	}

	public Integer getGroupId() {
        return groupId;
    }

    public void setGroupId(Integer groupId) {
        this.groupId = groupId;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }


}
