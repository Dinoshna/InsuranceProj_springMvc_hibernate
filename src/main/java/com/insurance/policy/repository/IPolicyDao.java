package com.insurance.policy.repository;

import java.util.List;

import com.insurance.policy.entity.PolicyDetails;

public interface IPolicyDao 
{
	 public List<PolicyDetails> getPolicyDetails();

	    public void savePolicyDetails(PolicyDetails policy);

	    public PolicyDetails getPolicyDetails(int Id);

	    public void deletePolicyDetails(int Id);


}