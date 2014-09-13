package com.health.manager.hibernate;

import java.math.BigInteger;
import java.sql.Date;
import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Secondary_User")
public class SecondaryUserDO {

	@Id
	@GeneratedValue(strategy = IDENTITY)
    private Integer id;
	
	@Column(name="primary_user_id")
	private String primaryUserId; 
     
    @Column(name="first_name")
    private String firstName;
     
    @Column(name="last_name")
    private String lastName;
     
    @Column(name="date_of_birth")
    private Date dateOfBirth;
     
    @Column(name="phone_number")
    private Long phoneNumber;
 
    @Column(name="email_address")
    private String emailAddress;
    
    @Column(name="time_created")
    private Date timeCreated;
    
    @Column(name="relationship_with_primary_user")
    private String relationshipWithPrimaryUser;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(Long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public Date getTimeCreated() {
		return timeCreated;
	}

	public void setTimeCreated(Date timeCreated) {
		this.timeCreated = timeCreated;
	}

	public String getPrimaryUserId() {
		return primaryUserId;
	}

	public void setPrimaryUserId(String primaryUserId) {
		this.primaryUserId = primaryUserId;
	}

	public String getRelationshipWithPrimaryUser() {
		return relationshipWithPrimaryUser;
	}

	public void setRelationshipWithPrimaryUser(String relationshipWithPrimaryUser) {
		this.relationshipWithPrimaryUser = relationshipWithPrimaryUser;
	}
	
}
