package com.health.manager.dal;

public enum UserType {

	ADMIN(0),
	PATIENT(1),
	PATIENT_CONTACT(2),
	DOCTOR(3),
	HOSPITAL(4),
	DIAGNOSTIC_CENTER(5),
	EDUCATOR(6),
	NUTRITIONIST(7);
	
	private int userType;
	
	UserType(int type){
		this.userType = type;
	}

	public int getUserType() {
		return userType;
	}

	public void setUserType(int userType) {
		this.userType = userType;
	}
	
}
