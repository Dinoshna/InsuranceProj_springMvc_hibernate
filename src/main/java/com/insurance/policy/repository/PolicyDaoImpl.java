package com.insurance.policy.repository;


import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import  com.insurance.policy.entity.PolicyDetails;
@Repository
public class PolicyDaoImpl implements IPolicyDao{
	
		@Autowired
		private SessionFactory sessionFactory;

		
		@Override
		public List <PolicyDetails> getPolicyDetails() {
			Session session = sessionFactory.getCurrentSession();
			CriteriaBuilder cb = session.getCriteriaBuilder();
			CriteriaQuery <PolicyDetails> cq = cb.createQuery(PolicyDetails.class);
			Root <PolicyDetails> root = cq.from(PolicyDetails.class);
			cq.select(root);
			Query query = session.createQuery(cq);
			return query.getResultList();
		
		}

		@Override
		public void deletePolicyDetails(int id) {
			Session session = sessionFactory.getCurrentSession();
			PolicyDetails policy = session.byId(PolicyDetails.class).load(id);
			session.delete(policy);
		}

		@Override
		public void savePolicyDetails(PolicyDetails policy) {
			Session currentSession = sessionFactory.getCurrentSession();
			currentSession.saveOrUpdate(policy);
		}

		@Override
		public PolicyDetails getPolicyDetails(int Id) {
			Session currentSession = sessionFactory.getCurrentSession();
			PolicyDetails policy = currentSession.get(PolicyDetails.class, Id);
			return policy;
		
			
		}

	}

