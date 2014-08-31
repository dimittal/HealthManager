package com.health.manager;

public class SecondaryUser extends User{

	private String relationshipWithPrimaryUser;
	private String primaryUserId;
	private String timeCreated;
	
	public String getRelationshipWithPrimaryUser() {
		return relationshipWithPrimaryUser;
	}
	public void setRelationshipWithPrimaryUser(String relationshipWithPrimaryUser) {
		this.relationshipWithPrimaryUser = relationshipWithPrimaryUser;
	}
	public String getPrimaryUserId() {
		return primaryUserId;
	}
	public void setPrimaryUserId(String primaryUserId) {
		this.primaryUserId = primaryUserId;
	}
	public String getTimeCreated() {
		return timeCreated;
	}
	public void setTimeCreated(String timeCreated) {
		this.timeCreated = timeCreated;
	}
	
}
