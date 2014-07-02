package com.health.manager;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Calendar;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.http.conn.ssl.X509HostnameVerifier;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONObject;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.UniformInterfaceException;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.WebResource.Builder;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import com.sun.jersey.client.urlconnection.HTTPSProperties;

public class UserManager {
	
	public static Client CLIENT = Client.create();
	
	public static final String headerName1 = "X-Parse-Application-Id";
	public static final String headerValue1 = "2Uu3fb01hkEhA7plXTRIMhzSmccY7SVUVOyObemG";
	public static final String headerName2 = "X-Parse-REST-API-Key";
	public static final String headerValue2 = "mrOhVSa2xjrW5QP3gGDRFeucjYaxSeKxznDMfgXX";
	public static final String headerName3 = "Content-Type";
	public static final String headerValue3 = "application/json";

	public String readMedicine() throws Exception{
		
		// https://www.parse.com/docs/rest#objects-creating
		
		String objectId = "Buz31Dtto4";
		String relativeUrl = "/1/classes/Medicine/" + objectId;
		
		ClientResponse response = call(relativeUrl, RestMethod.GET, null);
		
		return parseResponse(response);
	}
	
	public boolean addUser(User user) throws Exception{
		
		JSONObject json = new JSONObject();
		json.put("username", user.getUsername());
		json.put("email", user.getEmail());
		json.put("password", user.getPassword());
		json.put("firstName", user.getFirstName());
		json.put("lastName", user.getLastName());
		
		json.put("dateOfBirth", extractTimeStampFromDate(user.getDateOfBirth()));
		
		String data = json.toJSONString();
		System.out.println(data);
		
		ClientResponse response = call("/1/users", RestMethod.POST, data);
		
		parseResponse(response);
		
		if (response.getStatus() == 201){
			return true;
		}
		else {
			return false;
		}
	}
	
	public boolean addPrescription(User user) throws Exception{
		
		JSONObject json = new JSONObject();
		json.put("username", user.getEmail());
		json.put("password", user.getPassword());
		json.put("firstName", user.getFirstName());
		json.put("lastName", user.getLastName());
		
		json.put("dateOfBirth", extractTimeStampFromDate(user.getDateOfBirth()));
		
		String data = json.toJSONString();
		System.out.println(data);
		
		ClientResponse response = call("/1/users", RestMethod.POST, data);
		
		parseResponse(response);
		
		if (response.getStatus() == 201){
			return true;
		}
		else {
			return false;
		}
	}

	private long extractTimeStampFromDate(String date) {

		String[] dateArray = date.split("-");
		Calendar cal = Calendar.getInstance();
		cal.set(Integer.parseInt(dateArray[0]), Integer.parseInt(dateArray[1]), Integer.parseInt(dateArray[2]));
		
		return cal.getTimeInMillis()/1000;
	}
	
	public String loginUser(String email, String password) throws Exception{
		
		ClientResponse response = call("/1/login" +
				"?username=" + email +
				"&password=" + password, RestMethod.GET, null);
		
		if (response.getStatus() == 200){
			return parseResponse(response);
		}
		else {
			return null;
		}
		
	}
	
	public static String parseResponse(ClientResponse response) throws Exception{
		
		BufferedReader streamReader = new BufferedReader(new InputStreamReader(response.getEntityInputStream(), "UTF-8")); 
	    StringBuilder responseStrBuilder = new StringBuilder();

	    String inputStr;
	    while ((inputStr = streamReader.readLine()) != null){
	    	responseStrBuilder.append(inputStr);
	    }
	    System.out.println(responseStrBuilder.toString());
	    
	    return responseStrBuilder.toString();
	    
	}
	
	public static ClientResponse call(String urlRelativePath, RestMethod method, String jsonRequest)
			throws UniformInterfaceException, IOException{

		StringBuilder sb = new StringBuilder("https://api.parse.com");

		String url = sb.append(urlRelativePath).toString();
		
		System.out.println("######## : URL being hit: " + url);
		WebResource webResource = CLIENT.resource(url);

		Builder builder = webResource.header(headerName1, headerValue1).header(
				headerName2, headerValue2).header(headerName3, headerValue3);

		ClientResponse response = null;
		System.out.println("Method: " + method.toString());
		switch (method) {

		case GET: {
			//System.out.println("In GET Method!!!");
			response = builder.get(ClientResponse.class);
			break;
		}
		case POST: {
			//System.out.println("In POST Method!!!");
			response = builder.post(ClientResponse.class, jsonRequest);
			break;
		}
		case PUT: {
			//System.out.println("In PUT Method!!!");
			response = builder.put(ClientResponse.class, jsonRequest);
			break;
		}
		case DELETE: {
			//System.out.println("In DELETE Method!!!");
			response = builder.delete(ClientResponse.class, jsonRequest);
			break;
		}
		default: {
			//System.out.println("No Method Chosen!!!");
			break;
		}
		}

		return response;
	}
}
