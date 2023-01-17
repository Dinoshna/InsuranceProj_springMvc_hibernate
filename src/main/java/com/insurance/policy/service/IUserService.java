package com.insurance.policy.service;


import org.springframework.web.servlet.ModelAndView;

import com.insurance.policy.entity.User;

public interface IUserService {

	void registerUser(User user) ;

	ModelAndView getValidation(String userName, String password, String loginType);

}
