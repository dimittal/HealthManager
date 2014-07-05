package com.health.manager;

import java.util.Calendar;
import java.util.Date;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

public class Util {

	public static String formatPrescriptions(String prescriptions){
		
		JSONObject resultObject = (JSONObject) JSONValue.parse(prescriptions);
		JSONObject targetObject = new JSONObject();
		
		JSONArray resultsArray = (JSONArray) resultObject.get("results");
		JSONArray targetArray = new JSONArray();
		
		for (int i = 0; i < resultsArray.size(); i++){
			JSONObject json = (JSONObject) resultsArray.get(i);
			
			long dateOfIssue = (Long) json.get("dateOfIssue");
			
			Calendar cal = Calendar.getInstance();
			cal.setTimeInMillis(dateOfIssue * 1000);
			
			int m = cal.get(Calendar.MONTH);
			int y = cal.get(Calendar.YEAR);
			int d = cal.get(Calendar.DAY_OF_MONTH);
			
			String date = String.valueOf(y) + "-" + String.valueOf(m) + "-" + String.valueOf(d);
			System.out.println(date);
			
			json.put("dateOfIssue", date);
			
			targetArray.add(json);
		}
		
		targetObject.put("results", targetArray);
		
		return targetObject.toJSONString();
	}
}
