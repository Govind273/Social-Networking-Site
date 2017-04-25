package edu.iu.club.connect.model;


import java.util.Date;

import javax.persistence.*;

/**
 * Created by vishi 
 */

/*
* This is the model representation of our "job details" table in database.
* It has the getters and setters of all the attributes we have in our table.
* 
major

skills
user_edu_details
user_id
* */

@Entity
@Table(name = "usereducationdetails")
public class EducationalDetailsModel {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "educationdetailssequence")
    @SequenceGenerator(name ="educationdetailssequence",sequenceName = "education_details_id_seq",allocationSize = 1)
	private @Column(name = "user_edu_details")  Integer eduDetailsId;
	private @Column(name = "user_id")  Integer userId;
	private @Column(name = "description") String description; //used in search feature
    private @Column(name = "major") String major;   //used in search feature
    private @Column(name = "school") String school;
    private @Column(name = "skills") String skills;
    
    
    public Integer getEduDetailsId() {
		return eduDetailsId;
	}
	public void setEduDetailsId(Integer eduDetailsId) {
		this.eduDetailsId = eduDetailsId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}

	



}
