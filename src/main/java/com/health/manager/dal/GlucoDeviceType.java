package com.health.manager.dal;

public enum GlucoDeviceType {

	GMATE(1),
	IG(2);
	
	private int deviceId;
	
	GlucoDeviceType(int i){
		this.setDeviceId(i);
	}

	public int getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(int deviceId) {
		this.deviceId = deviceId;
	}
}
