package com.insurance.policy.exception;

import java.io.IOException;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.insurance.policy.entity.UserDefinedException;

@ControllerAdvice
public class Exceptions {
	@ExceptionHandler(IOException.class)
	public ModelAndView  processIOException(IOException ioe)
	{
		ModelAndView modelView = new ModelAndView("exceptionPage");
		modelView.addObject("name", ioe.getClass().getSimpleName());
		modelView.addObject("message", ioe.getMessage());
	     return modelView;
	}
	
	@ExceptionHandler(UserDefinedException.class)
	public ModelAndView  processCustomException(UserDefinedException ud)
	{
		ModelAndView modelView = new ModelAndView("exceptionPage");
		modelView.addObject("name", ud.getName());
		modelView.addObject("message", ud.getMessage());
	     return modelView;
	}
	
}
