package com.insurance.policy.service;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import  com.insurance.policy.repository.IPolicyDao;
import   com.insurance.policy.entity.PolicyDetails;
@Service
public class PolicyServiceImpl implements IPolicyService{


	@Autowired
	private IPolicyDao policyDao;

	@Autowired
	private SessionFactory sessionFactory;


	@Override
	@Transactional
	public List < PolicyDetails > getPolicyDetails() {
		return policyDao.getPolicyDetails();
	}

	@Override
	@Transactional
	public void savePolicyDetails(PolicyDetails policy) {
		policyDao.savePolicyDetails(policy);
	}

	@Override
	@Transactional
	public PolicyDetails getPolicyDetails(int Id) {
		return policyDao.getPolicyDetails(Id);
	}

	@Override
	@Transactional
	public void deletePolicyDetails(int Id) {
		policyDao.deletePolicyDetails(Id);
	}

	@Override
	public ModelAndView premiumCalculate(int structureValue, int contentValue,HttpServletRequest request) {
		int result=0;
		ModelAndView modelview = new ModelAndView();
		Session session = sessionFactory.openSession();

		result=((structureValue+contentValue)/12); 
		request.setAttribute("result",result);
		request.setAttribute("structureValue", structureValue);
		request.setAttribute("contentValue", contentValue);

		modelview.setViewName("calculationResult");
		return modelview;
	}






}
