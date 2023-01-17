package com.insurance.policy.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.insurance.policy.entity.User;
import com.insurance.policy.repository.IUserDao;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserDao userDao;

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void registerUser(User user) {
		userDao.registerUser(user);
	}

	@Override
	@Transactional
	public ModelAndView getValidation(String UserName, String Password, String LoginType) {

			ModelAndView modelview = new ModelAndView();
			Session session = sessionFactory.openSession();
			String SELECT_USER = "SELECT UserName,Password,LoginType from User where UserName =:username  AND Password=:password AND LoginType=:loginType";
			
			 List listofUsers  = session.createQuery(SELECT_USER)
			.setParameter("username", UserName)
			.setParameter("password", Password)
			.setParameter("loginType", LoginType)
			.list();
			
			if (listofUsers!=null && listofUsers.size()>0) {

				String action = LoginType;

				switch (action) {
				case "Admin": {

					sessionFactory.openSession();
					modelview.setViewName("Adminpage");
					break;
				}
				case "User": {

					sessionFactory.openSession();
					modelview.setViewName("Welcome");
					break;
				}
				default:
					modelview.setViewName("Login");
				}

			} else {

				modelview.setViewName("error");
			}
			return modelview;

		
	}
}
