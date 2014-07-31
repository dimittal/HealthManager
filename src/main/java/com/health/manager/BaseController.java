package com.health.manager;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

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
	
	@RequestMapping(value = "/newUser", method = RequestMethod.POST)
	public String newUser(@ModelAttribute("user") 
									User user, ModelMap model) {

		System.out.println(user.getEmail() + " " + 
							user.getPassword() + " " + 
							user.getConfirmPassword() + " " + 
							user.getFirstName() + " " + 
							user.getLastName() + " " + 
							user.getDateOfBirth());
		
		String response = null;
		UserManager manager = new UserManager();
		try {
			response = manager.addUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		if (response == null){
			model.addAttribute("errorMessage", "Sorry something went wrong!");
			return "signup";
		}
		
		JSONObject jObject = (JSONObject) JSONValue.parse(response);
		
		System.out.println("Inside Dashboard setup call");
		model.addAttribute("userId", (String) jObject.get("objectId"));
		model.addAttribute("token", (String) jObject.get("sessionToken"));
		model.addAttribute("firstName", user.getFirstName());
		model.addAttribute("lastName", user.getLastName());

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "dashboard";
				
	}
	
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signin(@ModelAttribute("user") User user, ModelMap model) {

		model.addAttribute("message",
				"Maven Web Project");
		
		System.out.println(user.getUsername() + user.getPassword());
		
		if (user == null || user.getUsername() == null || user.getPassword() == null){
			System.out.println("Incomplete Info");
			model.addAttribute("errorMessage", "Invalid username or password!");
			return "login";
		}
		
		UserManager manager = new UserManager();
		String token = null;
		try {
			token = manager.loginUser(user.getUsername(), user.getPassword());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (token == null){
			System.out.println("Invalid User");
			model.addAttribute("errorMessage", "Invalid username or password!");
			return "login";
		}
			
		JSONObject jObject = (JSONObject) JSONValue.parse(token);
		
		System.out.println("Inside Dashboard setup call");
		model.addAttribute("userId", (String) jObject.get("objectId"));
		model.addAttribute("token", (String) jObject.get("sessionToken"));
		model.addAttribute("firstName", (String) jObject.get("firstName"));
		model.addAttribute("lastName", (String) jObject.get("lastName"));

		// Spring uses InternalResourceViewResolver and return back index.jsp
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
	
	@RequestMapping(value = "/loadPrescriptions", method = RequestMethod.GET)
	public @ResponseBody String loadPrescriptions(@RequestParam("token") String token, ModelMap model) {
		
		UserManager manager = new UserManager();
		String userId = null;
		
		try {
			String res = manager.getUserFromSessionToken(token);
			
			JSONObject jObject = (JSONObject) JSONValue.parse(res);
			
			userId = (String) jObject.get("objectId");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (userId == null){
			System.out.println("Invalid Session Token");
			return null;
		}
		else {
			String prescriptions = loadPrescriptions(manager, userId);
			
			return Util.formatPrescriptions(prescriptions);
		}
		
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
	
	@RequestMapping(value = "/education/articles/{article_num}", method = RequestMethod.GET)
	public String openArticle(@PathVariable("article_num") String articleNum, ModelMap model) {

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "articles/article_" + articleNum;

	}	

}