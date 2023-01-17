package com.insurance.policy.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "policy_table")
public class PolicyDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private int Id;

	@Column(name = "Policies")
	private String Policies;

	@Column(name = "Plan")
	private String Plan;


	public PolicyDetails() {

	}
	public PolicyDetails(int id, String policies, String plan) {
		super();
		Id = id;
		Policies = policies;
		Plan = plan;
	}


	public int getId() {
		return Id;
	}


	public void setId(int id) {
		Id = id;
	}


	public String getPolicies() {
		return Policies;
	}


	public void setPolicies(String policies) {
		Policies = policies;
	}


	public String getPlan() {
		return Plan;
	}


	public void setPlan(String plan) {
		Plan = plan;
	}


	@Override
	public String toString() {
		return "PolicyDetails [Id=" + Id + ", Policies=" + Policies + ", Plan=" + Plan + "]";
	}

}
