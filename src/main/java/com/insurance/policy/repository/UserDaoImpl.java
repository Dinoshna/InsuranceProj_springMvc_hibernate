package com.insurance.policy.repository;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.insurance.policy.entity.User;

@Repository
public class UserDaoImpl implements IUserDao {

		@Autowired
		private SessionFactory sessionFactory;

		@Override
		@Transactional
		public void registerUser(User user) {

			 Session session = sessionFactory.openSession();
		        Transaction tx = null;
		        Integer userId = null;
		        try
		        {
		            tx = session.beginTransaction();
		            userId = (Integer) session.save(user);
		            tx.commit();
		        } 
		        catch (HibernateException ex)
		        {
		            if(tx != null)
		                tx.rollback();
		        }
		        finally
		        {
		            session.close();
		        }
			
		}

	}
