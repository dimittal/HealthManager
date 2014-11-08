package com.health.manager.hibernate;

import static javax.persistence.GenerationType.IDENTITY;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Glucose_Reading")
public class GlucoReadingDO {

	@Id
	@GeneratedValue(strategy = IDENTITY)
	private Integer id;
    
    @Column(name = "value")
    private Integer value;
    
    @Column(name = "time_taken")
    private Timestamp timeTaken;
    
    @Column(name = "device_id")
    private Integer deviceId;
    
    @Column(name = "type")
    private Integer readingType;
    
    @Column(name = "status")
    private String status;

    @ManyToOne
    private UserDO user;
    
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getValue() {
		return value;
	}

	public void setValue(Integer value) {
		this.value = value;
	}

	public Integer getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(Integer deviceId) {
		this.deviceId = deviceId;
	}

	public UserDO getUser() {
		return user;
	}

	public void setUser(UserDO user) {
		this.user = user;
	}

	public Integer getReadingType() {
		return readingType;
	}

	public void setReadingType(Integer readingType) {
		this.readingType = readingType;
	}

	public Timestamp getTimeTaken() {
		return timeTaken;
	}

	public void setTimeTaken(Timestamp timeTaken) {
		this.timeTaken = timeTaken;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
