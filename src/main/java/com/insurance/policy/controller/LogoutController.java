package com.insurance.policy.controller;


import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController 
{
	private static final Logger logger = Logger.getLogger(LogoutController.class);

	@RequestMapping("/Logout")
	public ModelAndView logout() { 
		logger.info("Logout successfully!!");
		ModelAndView modelView=new ModelAndView();
		modelView.setViewName("Login"); 
		return modelView; 
	}


}
