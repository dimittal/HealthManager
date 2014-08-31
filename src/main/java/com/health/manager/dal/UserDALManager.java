package com.health.manager.dal;

import java.math.BigInteger;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.health.manager.User;
import com.health.manager.hibernate.HibernateUtil;
import com.health.manager.hibernate.UserDO;

public class UserDALManager {

	public static int createUser(User user){
		
		UserDO userDO = new UserDO();
		userDO.setFirstName(user.getFirstName());
		userDO.setLastName(user.getLastName());
		userDO.setEmailAddress(user.getEmail());
		userDO.setPassword(user.getPassword());
		userDO.setDateOfBirth(Date.valueOf(user.getDateOfBirth()));
		userDO.setGender(getGender(user.getGender()));
		userDO.setPhoneNumber(new Long(user.getPhoneNumber()));
		userDO.setUserType(UserType.PATIENT.getUserType());
		userDO.setBloodGroup(user.getBloodGroup());
		userDO.setHeight(Integer.parseInt(user.getHeight()));
		userDO.setWeight(Integer.parseInt(user.getWeight()));
		userDO.setOccupation(user.getOccupation());
		userDO.setTimeCreated(getCurrentSQLDate());
		
		int userId = save(userDO);
		
		return userId;
	}
	
	public static User findUser(String email){
		
		List<?> userList = fetchUser(email);
				
		if (userList != null && !userList.isEmpty()){
			UserDO user = (UserDO) userList.get(0);
			
			return transformFromUserDO(user);
		}
		
		return null;
	}
	
	public static List<User> listAllPatients(){
		
		List<?> userList = getAll(UserType.PATIENT.getUserType());
		
		List<User> result = new ArrayList<User>();
		
		for (int i = 0; i < userList.size(); i++){
			UserDO user = (UserDO) userList.get(i);
			
			result.add(transformFromUserDO(user));
		}
		
		return result;
	}
	
	private static User transformFromUserDO(UserDO userDO) {
		
		if (userDO != null){
			User user = new User();
			user.setEmail(userDO.getEmailAddress());
			user.setFirstName(userDO.getFirstName());
			user.setLastName(userDO.getLastName());
			user.setSignUpDate(userDO.getTimeCreated().toGMTString());
			user.setUid("K-000" + userDO.getId().toString());
			user.setBloodGroup(userDO.getBloodGroup());
			user.setDateOfBirth(userDO.getTimeCreated().toGMTString());
			user.setEmail(userDO.getEmailAddress());
			user.setGender(userDO.getGender());
			user.setOccupation(user.getOccupation());
			user.setPhoneNumber(userDO.getPhoneNumber().toString());
			
			return user;
		}
		
		return null;
	}

	private static Date getCurrentSQLDate(){
		
		Calendar currentDate = Calendar.getInstance();
		
		String date = String.valueOf(currentDate.get(Calendar.YEAR)) + "-"
		+ String.valueOf(currentDate.get(Calendar.MONTH)) + "-"
		+ String.valueOf(currentDate.get(Calendar.DATE));
		
		return Date.valueOf(date);
	}
	
	private static String getGender(String gender){
		
		if (gender != null){
			return gender.substring(0, 1);
		}
		
		return null;
	}
	
	private static List<?> getAll(int userType) {
	    SessionFactory sf = HibernateUtil.getSessionFactory();
	    Session session = sf.openSession();
	    	 
	    Query query = session.createQuery("from UserDO where user_type = :user_type ");
	    query.setParameter("user_type", userType);
	         	     
	    List<?> list = query.list();
	    session.close();
	 
	    return list;
	}
	
	private static List<?> fetchUser(String userEmail) {
	    SessionFactory sf = HibernateUtil.getSessionFactory();
	    Session session = sf.openSession();
	    	 
	    Query query = session.createQuery("from UserDO where email_address = :user_email ");
	    query.setParameter("user_email", userEmail);
	         	     
	    List<?> list = query.list();
	    session.close();
	 
	    return list;
	}
	
	private static int save(UserDO user) {
	    SessionFactory sf = HibernateUtil.getSessionFactory();
	    Session session = sf.openSession();
	    session.beginTransaction();
	 
	    int id = (Integer) session.save(user);
	    user.setId(id);
	         
	    session.getTransaction().commit();
	         
	    session.close();
	 
	    return user.getId();
	}
}
