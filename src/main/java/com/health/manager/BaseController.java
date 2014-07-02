package com.health.manager;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

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

		model.addAttribute("message",
				"Maven Web Project + Spring 3 MVC - welcome()");

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "index";

	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {

		model.addAttribute("message",
				"Maven Web Project + Spring 3 MVC - welcome()");

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "login";

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
									User user, BindingResult result) {

		System.out.println(user.getEmail() + " " + 
							user.getPassword() + " " + 
							user.getConfirmPassword() + " " + 
							user.getFirstName() + " " + 
							user.getLastName() + " " + 
							user.getDateOfBirth());
		
		boolean success = false;
		UserManager manager = new UserManager();
		try {
			success = manager.addUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "signup";

	}
	
	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public @ResponseBody String signin(@RequestParam("email") String emailAddress, 
			@RequestParam("pass") String password, ModelMap model) {

		model.addAttribute("message",
				"Maven Web Project");
		
		System.out.println(emailAddress + password);
		
		UserManager manager = new UserManager();
		String token = null;
		try {
			token = manager.loginUser(emailAddress, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (token == null){
			System.out.println("Invalid User");
		}

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return token;
	}
	
	@RequestMapping(value = "/dashboard/addPrescription", method = RequestMethod.POST)
	public String createPrescription(@ModelAttribute("prescription") 
											Prescription prescription, BindingResult result) {

		System.out.println("User : " + prescription.getUserId());
		System.out.println("Date : " + prescription.getDate());		
		System.out.println("Symptoms : " + prescription.getSymptoms());
		System.out.println("Doctor's Name : " + prescription.getDoctor());
		
		return "dashboard";
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

}