package com.health.manager.dal;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.health.manager.GlucoReading;
import com.health.manager.User;
import com.health.manager.hibernate.GlucoReadingDO;
import com.health.manager.hibernate.HibernateUtil;
import com.health.manager.hibernate.UserDO;

public class GlucoReadingsDALManager {

	public static List<GlucoReading> getLatestReadings(int num){
		
		List<?> readingList = getLatest(num);
		
		List<GlucoReading> result = new ArrayList<GlucoReading>();
		
		for (int i = 0; i < readingList.size(); i++){
			GlucoReadingDO reading = (GlucoReadingDO) readingList.get(i);
			
			result.add(transformFromGlucoReadingDO(reading));
		}
		
		return result;
	}
	
	public static List<GlucoReading> getPastReadingsByUser(int uid, int type, int num){
		
		List<?> readingList = getLatestByUser(uid, type, num);
		
		List<GlucoReading> result = new ArrayList<GlucoReading>();
		
		for (int i = 0; i < readingList.size(); i++){
			GlucoReadingDO reading = (GlucoReadingDO) readingList.get(i);
			
			result.add(transformFromGlucoReadingDO(reading));
		}
		
		return result;
	}
	
	private static GlucoReading transformFromGlucoReadingDO(GlucoReadingDO glucoReadingDO) {
		
		if (glucoReadingDO != null){
			GlucoReading glucoReading = new GlucoReading();
			glucoReading.setFirstName(glucoReadingDO.getUser().getFirstName());
			glucoReading.setLastName(glucoReadingDO.getUser().getLastName());
			glucoReading.setTimeTaken(glucoReadingDO.getTimeTaken().toString());
			glucoReading.setId(glucoReadingDO.getId().toString());
			glucoReading.setReadingType(glucoReadingDO.getReadingType().toString());
			glucoReading.setUid(glucoReadingDO.getUser().getId().toString());
			glucoReading.setValue(glucoReadingDO.getValue().toString());
			
			return glucoReading;
		}
		
		return null;
	}
	
	private static List<?> getLatestByUser(int uid, int type, int num) {
	    SessionFactory sf = HibernateUtil.getSessionFactory();
	    Session session = sf.openSession();
	    	 	    	         	     
	    Query query = session.createQuery("from GlucoReadingDO where status = 'C' and user_id = :uid and type = :type order by time_taken");
	    query.setParameter("uid", uid);
	    query.setParameter("type", type);
	    query.setMaxResults(num); 
	    
	    List<?> list = query.list();
	    session.close();
	 
	    return list;
	}
	
	private static List<?> getLatest(int num) {
	    SessionFactory sf = HibernateUtil.getSessionFactory();
	    Session session = sf.openSession();
	    	 	    	         	     
	    Query query = session.createQuery("from GlucoReadingDO where status = 'P' order by time_taken");
	    query.setMaxResults(num); 
	    
	    List<?> list = query.list();
	    session.close();
	 
	    return list;
	}
}
