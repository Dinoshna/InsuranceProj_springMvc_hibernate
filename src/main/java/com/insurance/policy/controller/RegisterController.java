package com.insurance.policy.controller;


import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.insurance.policy.entity.User;
import com.insurance.policy.entity.UserDefinedException;
import com.insurance.policy.service.IUserService;


@Controller
public class RegisterController {

	@Autowired
	private IUserService userService;

	@RequestMapping("/registration")
	public ModelAndView showRegister() {
		ModelAndView modelview = new ModelAndView();
		modelview.setViewName("Registration");
		return modelview;
	}


	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute User user) throws IOException
	{
		ModelAndView modelview = new ModelAndView();
		userService.registerUser(user);
		modelview.setViewName("Login");
		
		/*
		 * if(user.getPassword().length()>10) { throw new
		 * IOException("IOException has occured"); }
		 */
		
		if(user.getContact().length()>12)
		{
			throw new UserDefinedException("Custom Exception has occured", "CustomException"); 
			
		}
		  if(user.getLoginType().equals("Admin")) 
		  {
			  throw new UserDefinedException("Custom Exception has occured", "CustomException");
		  }
		 
		return modelview;
	}
}

