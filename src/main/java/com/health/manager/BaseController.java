package com.health.manager;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.sql.Date;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.health.manager.dal.GlucoReadingsDALManager;
import com.health.manager.dal.UserDALManager;
import com.health.manager.hibernate.HibernateUtil;
import com.health.manager.hibernate.UserDO;

@Controller
@RequestMapping("/")
public class BaseController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(ModelMap model) {

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "index";

	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "login";

	}
	
	@RequestMapping(value = "/adminDashboard", method = RequestMethod.GET)
	public String adminDashboard(ModelMap model) {

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "forms/adminDashboard";

	}
	
	@RequestMapping(value = "/educator", method = RequestMethod.GET)
	public String educator(ModelMap model) {

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "educator";

	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(ModelMap model) {

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "about";

	}
	
	@RequestMapping(value = "/forms", method = RequestMethod.GET)
	public String adminForms(ModelMap model) {

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "forms";

	}
	
	@RequestMapping(value = "/education", method = RequestMethod.GET)
	public String educate(ModelMap model) {

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "education";

	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(ModelMap model) {

		model.addAttribute("message",
				"Maven Web Project");

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "signup";

	}
	
	@RequestMapping(value = "/forms/newUser", method = RequestMethod.POST)
	public String newUser(@ModelAttribute("user") 
									User user, ModelMap model) {

		System.out.println(user.getEmail() + " " + 
							user.getPassword() + " " + 
							user.getConfirmPassword() + " " + 
							user.getFirstName() + " " + 
							user.getLastName() + " " + 
							user.getDateOfBirth());
		
		
		int userId = UserDALManager.createUser(user);

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "forms/adminDashboard";
				
	}
	
	@RequestMapping(value = "/forms/newSecondaryUser", method = RequestMethod.POST)
	public String newSecondaryUser(@ModelAttribute("secondaryUser") 
									SecondaryUser user, ModelMap model) {

		System.out.println(user.getEmail() + " " + 
							user.getFirstName() + " " + 
							user.getLastName() + " " + 
							user.getDateOfBirth() + " " +
							user.getPhoneNumber() + " " + 
							user.getPrimaryUserId() + " " +
							user.getRelationshipWithPrimaryUser());
		
		
		int userId = UserDALManager.createSecondaryUser(user);

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "forms/adminDashboard";
				
	}
	
	@RequestMapping(value = "/data/viewPatient", method = RequestMethod.POST)
	public String findUser(@RequestParam("email") 
									String email, ModelMap model) {

		System.out.println(email);
		
		User user = UserDALManager.findUser(email);
		
		model.addAttribute("patient_name", user.getFirstName() + " " + user.getLastName());
		model.addAttribute("uid", user.getUid());
		model.addAttribute("phone_number", user.getPhoneNumber());
		model.addAttribute("age", user.getDateOfBirth());
		model.addAttribute("gender", user.getGender().equalsIgnoreCase("M") ? "Male" : "Female");
		
		addDummyData(model);
		
		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "data/viewPatient";
				
	}
	
	private void addDummyData(ModelMap model){
		
		for (int i = 0; i < 10; i++){
			model.addAttribute("pre_date_" + i, i);
			model.addAttribute("pre_reading_" + i, 120 + (i*i)%8);
		}
		
		for (int i = 0; i < 10; i++){
			model.addAttribute("post_date_" + i, i);
			model.addAttribute("post_reading_" + i, 120 + (i*i)%12);
		}
		
		for (int i = 0; i < 10; i++){
			model.addAttribute("other_date_" + i, i);
			model.addAttribute("other_reading_" + i, 120 + (i*i)%4);
		}
	}
	
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signin(@ModelAttribute("user") User user, ModelMap model) {

		model.addAttribute("message",
				"Maven Web Project");
		
		System.out.println(user.getEmail() + " : "+ user.getPassword());
		
		if (user.getEmail().equalsIgnoreCase("admin@kronica.in") && 
				user.getPassword().equalsIgnoreCase("1q2w3e4r")){
			return "forms/adminDashboard";
		}
		
		return "dashboard";
	}
	
	@RequestMapping(value = "/addPrescription", method = RequestMethod.POST)
	public String createPrescription(@ModelAttribute("prescription") 
											Prescription prescription, ModelMap model) {

		System.out.println("SessionToken : " + prescription.getSessionToken());
		System.out.println("Date : " + prescription.getDate());		
		System.out.println("Symptoms : " + prescription.getSymptoms());
		System.out.println("Doctor's Name : " + prescription.getDoctor());
		
		UserManager manager = new UserManager();
		String userId = null;
		String userSession = null;
		
		try {
			userSession = manager.getUserFromSessionToken(prescription.getSessionToken());
						
			JSONObject jObject = (JSONObject) JSONValue.parse(userSession);
			
			userId = (String) jObject.get("objectId");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (userId == null){
			System.out.println("Invalid Session Token");
			model.addAttribute("errorMessage", "Please login again");
			return "login";
		}
		else {
			System.out.println("Create prescription for : " + userId);
			prescription.setUserId(userId);
			
			try {
				manager.addPrescription(prescription);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			JSONObject jObject = (JSONObject) JSONValue.parse(userSession);
			
			System.out.println("Inside Dashboard setup call");
			model.addAttribute("userId", (String) jObject.get("objectId"));
			model.addAttribute("token", (String) jObject.get("sessionToken"));
			model.addAttribute("firstName", (String) jObject.get("firstName"));
			model.addAttribute("lastName", (String) jObject.get("lastName"));
			
			return "dashboard";
		}
		
	}
	
	@RequestMapping(value = "/fetchHistory", method = RequestMethod.GET)
	public @ResponseBody String loadPastReadingsForUser(ModelMap model, @RequestParam("uid") String uid,
												@RequestParam("type") String type) {
		
		List<GlucoReading> readingList = GlucoReadingsDALManager.getPastReadingsByUser(Integer.parseInt(uid), 
				Integer.parseInt(type), 5);
		
		return formatReadingsData(readingList);
				
	}
	
	@RequestMapping(value = "/fetchGlucoseData", method = RequestMethod.GET)
	public @ResponseBody String loadGlucoseData(ModelMap model) {
		
		List<GlucoReading> readingList = GlucoReadingsDALManager.getLatestReadings(5);
		
		return formatReadingsData(readingList);
				
	}
	
	@RequestMapping(value = "/forms/loadUsers", method = RequestMethod.GET)
	public @ResponseBody String loadUsers(ModelMap model) {
				
		List<User> userList = UserDALManager.listAllPatients();
		
		return formatUserData(userList);
	}
	
	private static String formatUserData(List<User> users){
		
		if (users != null){
			
			JSONObject targetObject = new JSONObject();
			
			JSONArray userArray = new JSONArray();
			
			if (!users.isEmpty()){
				for (User user: users){
					JSONObject obj = new JSONObject();
					obj.put("email", user.getEmail());
					obj.put("first_name", user.getFirstName());
					obj.put("last_name", user.getLastName());
					obj.put("uid", user.getUid());
					
					userArray.add(obj);
				}
			}
			targetObject.put("users", userArray);
		
			String res = targetObject.toJSONString();
			
			System.out.println(res);
			return res;
		}
		
		return null;
	}
	
	private static String formatReadingsData(List<GlucoReading> readings){
		
		if (readings != null){
			
			JSONObject targetObject = new JSONObject();
			
			JSONArray newReadingArray = new JSONArray();
			
			if (!readings.isEmpty()){
				for (GlucoReading reading: readings){
					JSONObject obj = new JSONObject();
					obj.put("first_name", reading.getFirstName());
					obj.put("last_name", reading.getLastName());
					obj.put("uid", reading.getUid());
					obj.put("time_taken", reading.getTimeTaken());
					obj.put("value", reading.getValue());
					obj.put("reading_type", reading.getReadingType());
					obj.put("id", reading.getId());
					
					newReadingArray.add(obj);
				}
			}
			targetObject.put("new_readings", newReadingArray);
					
			String res = targetObject.toJSONString();
			
			System.out.println(res);
			return res;
		}
		
		return null;
	}

	private String loadPrescriptions(UserManager manager, String userId) {
		System.out.println("Reading prescriptions for : " + userId);
		String prescriptions = null;
		try {
			prescriptions = manager.fetchPrescriptions(userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return prescriptions;
	}
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String loginAndOpenDashBoard(@RequestParam("token") String token, @RequestParam("firstName") String firstName,
										@RequestParam("lastName") String lastName, @RequestParam("userId") String userId,
										ModelMap model) {

		System.out.println("Inside Dashboard setup call");
		model.addAttribute("userId", userId);
		model.addAttribute("token", token);
		model.addAttribute("firstName", firstName);
		model.addAttribute("lastName", lastName);

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "dashboard";

	}
	
	@RequestMapping(value = "/education/articles/", method = RequestMethod.GET)
	public String getArticles(ModelMap model) {

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "articles/articles";

	}	
	
	@RequestMapping(value = "/education/articles/{article_num}", method = RequestMethod.GET)
	public String openArticle(@PathVariable("article_num") String articleNum, ModelMap model) {

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "articles/article_" + articleNum;

	}
	
	@RequestMapping(value = "/forms/{form_num}", method = RequestMethod.GET)
	public String openForm(@PathVariable("form_num") String formNum, ModelMap model) {

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "forms/" + formNum;

	}
	
	@RequestMapping(value = "/data/{dataPage_num}", method = RequestMethod.GET)
	public String openDataPage(@PathVariable("dataPage_num") String dataPageNum, ModelMap model) {

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "data/" + dataPageNum;

	}

}