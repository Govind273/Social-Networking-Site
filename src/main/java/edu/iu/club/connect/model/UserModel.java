package edu.iu.club.connect.model;


import javax.persistence.*;

/**
 * Created by walia on 2/14/2017.
 * Edited by Vaishnavi M to add additional fields 
 */

/*
* This is the model representation of our "users" table in database.
* It has the getters and setters of all the attributes we have in our table.
* */

@Entity
@Table(name = "users")
public class UserModel {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "usersSequence")
    @SequenceGenerator(name ="usersSequence",sequenceName = "users_user_id_seq",allocationSize = 1)
    private @Column(name = "user_id")  Integer userId;
    private @Column(name = "first_name") String firstName; //used in search feature
    private @Column(name = "last_name") String lastName;   //used in search feature
    private @Column(name = "password") String password;
    private @Column(name = "email_id") String emailId;
    private @Column(name = "about") String about;
    private @Column(name = "profile_pic") String profilePic;
    private @Column(name = "question1") String question1;
    private @Column (name = "question2") String question2;

    private @Column(name = "gender") String gender; //used in search feature
    private @Column(name = "birthdate") String birthdate;   //used in search feature
    private @Column(name = "languages") String languages;
    private @Column(name = "locationfrom") String location;

    public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getLanguages() {
		return languages;
	}

	public void setLanguages(String languages) {
		this.languages = languages;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
    public String getQuestion1() {
		return question1;
	}

	public void setQuestion1(String question1) {
		this.question1 = question1;
	}

	public String getQuestion2() {
		return question2;
	}

	public void setQuestion2(String question2) {
		this.question2 = question2;
	}

	

    public String getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }



    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }


    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }




}
