package edu.iu.club.connect.model;


import javax.persistence.*;

/**
 * Created by walia on 2/14/2017.
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
    private @Column(name = "first_name") String firstName;
    private @Column(name = "last_name") String lastName;
    private @Column(name = "password") String password;
    private @Column(name = "email_id") String emailId;
    private @Column(name = "about") String about;

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
