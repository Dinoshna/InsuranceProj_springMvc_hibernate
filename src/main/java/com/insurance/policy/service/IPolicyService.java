package com.insurance.policy.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.insurance.policy.entity.PolicyDetails;

public interface IPolicyService {
	
	public List < PolicyDetails > getPolicyDetails();

    public void savePolicyDetails(PolicyDetails policy);

    public PolicyDetails getPolicyDetails(int Id);

    public void deletePolicyDetails(int Id);

	public ModelAndView premiumCalculate(int structureValue, int contentValue,HttpServletRequest request);

	

}
