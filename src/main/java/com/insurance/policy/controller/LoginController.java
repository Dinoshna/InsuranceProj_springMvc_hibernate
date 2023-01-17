package com.insurance.policy.controller;

import org.apache.log4j.Logger;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.insurance.policy.service.IUserService;

@Controller
public class LoginController {
 
	 private static final Logger logger = Logger.getLogger(LoginController.class);
	 
	@Autowired
	private IUserService userService;

	@RequestMapping("/") 
	public ModelAndView Home()
	{ 
		ModelAndView modelview = new ModelAndView();
		modelview.setViewName("Home"); 
		return modelview;
	}

	@RequestMapping("/login")
	public ModelAndView Login() {
		ModelAndView modelview = new ModelAndView();
		modelview.setViewName("Login");
		return modelview;
	}
	@RequestMapping("/About")
	public ModelAndView AboutPage() {
		ModelAndView modelview = new ModelAndView();
		modelview.setViewName("About");
		return modelview;
	}
	@RequestMapping("/Home")
	public ModelAndView aboutHome() {
		ModelAndView modelview = new ModelAndView();
		modelview.setViewName("Home");
		return modelview;
	}
	
	@RequestMapping("/Benefits")
	public ModelAndView BenefitsPage() {
		ModelAndView modelview = new ModelAndView();
		modelview.setViewName("Benefits");
		return modelview;
	}
	@PostMapping("/LoginProcess")
	public ModelAndView ValidateUser(@Valid @RequestParam("UserName") String UserName,
			@Valid @RequestParam("Password") String Password, @Valid @RequestParam("LoginType") String LoginType)  {
        logger.info("LoginType"+LoginType);
		ModelAndView modelview;
		modelview = userService.getValidation(UserName, Password, LoginType);
		return modelview;
	}
}