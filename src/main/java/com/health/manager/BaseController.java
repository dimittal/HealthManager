package com.health.manager;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String loginAndOpenDashBoard(@RequestParam("token") String token, ModelMap model) {

		model.addAttribute("token", token);

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "dashboard";

	}

}