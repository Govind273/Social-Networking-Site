package edu.iu.club.connect.model;


import java.util.Date;

import javax.persistence.*;

/**
 * Created by vishi 
 */

/*
* This is the model representation of our "job details" table in database.
* It has the getters and setters of all the attributes we have in our table.
* */

@Entity
@Table(name = "jobdetails")
public class JobDetailsModel {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "jobdetailssequence")
    @SequenceGenerator(name ="jobdetailssequence",sequenceName = "job_details_id_seq",allocationSize = 1)
	private @Column(name = "jobdetails_id")  Integer jobdetails_Id;
    private @Column(name = "user_id")  Integer userId;
	private @Column(name = "position_held") String position; //used in search feature
    private @Column(name = "company") String company;   //used in search feature
    private @Column(name = "word_desc") String jobDesc;
    private @Column(name = "skills") String skills;
    
    
    public Integer getJobdetails_Id() {
		return jobdetails_Id;
	}
	public void setJobdetails_Id(Integer jobdetails_Id) {
		this.jobdetails_Id = jobdetails_Id;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getJobDesc() {
		return jobDesc;
	}
	public void setJobDesc(String jobDesc) {
		this.jobDesc = jobDesc;
	}
	

	



}
