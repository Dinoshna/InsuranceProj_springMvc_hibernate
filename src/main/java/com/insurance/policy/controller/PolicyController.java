package com.insurance.policy.controller;
import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.insurance.policy.entity.PolicyDetails;
import com.insurance.policy.service.IPolicyService;

@Controller
@RequestMapping("/policy")
public class PolicyController {

	 private static final Logger logger = Logger.getLogger(PolicyController.class);
	
	@Autowired
	private IPolicyService policyService;

	@GetMapping("/list")
	public String listPolicy(Model model) {
		List <PolicyDetails> listOfpolicy = policyService.getPolicyDetails();
		model.addAttribute("policylists", listOfpolicy);
		logger.info("listOfpolicy in policylist :"+listOfpolicy);
		return "Policy-list";
	}


	@GetMapping("/userlist")
	public String userListPolicy(Model model) { 
		List <PolicyDetails> userlist = policyService.getPolicyDetails();
		model.addAttribute("policylists", userlist); 
		return "ViewPolicies"; 
	}


	@GetMapping("/showForm")
	public String showFormForAdd(Model model) {
		PolicyDetails policy = new PolicyDetails();
		model.addAttribute("policy", policy);
		return "Policy-form";
	}

	@PostMapping("/savePolicyDetails")
	public String savePolicyDetails(@ModelAttribute("policy") PolicyDetails policy) {
		policyService.savePolicyDetails(policy);
		return "redirect:/policy/list";
	}

	@GetMapping("/updateForm")
	public String showFormForUpdate(@RequestParam("Id") int Id, Model model) {
		PolicyDetails policy = policyService.getPolicyDetails(Id);
		model.addAttribute("policy", policy);
		return "Policy-form";
	}

	@GetMapping("/delete")
	public String deleteEmployee(@RequestParam("Id") int Id) {
		policyService.deletePolicyDetails(Id);
		return "redirect:/policy/list";
	}
	@RequestMapping("/Adminpage")
	public ModelAndView adminWelcomePage() {
		ModelAndView modelView=new ModelAndView();
		modelView.setViewName("Adminpage");
		return modelView;
	}

	@RequestMapping("/Welcome")
	public ModelAndView userWelcomePage() {
		ModelAndView modelView=new ModelAndView();
		modelView.setViewName("Welcome");
		return modelView;
	}



	@GetMapping("/userView")
	public String userPolicyPage()  {
		return "redirect:/policy/userlist";
	}

	@GetMapping("/adminView")
	public String adminViewPolicy() {
		return "redirect:/policy/list";
	}

	@RequestMapping("/PremiumPage")
	public ModelAndView PremiumPage() {
		ModelAndView modelView=new ModelAndView();
		modelView.setViewName("PremiumPage");
		return modelView;
	}

	@PostMapping("/calculate")
	public ModelAndView PremiumCalculate(@RequestParam("structureValue") int structureValue,@RequestParam("contentValue") int contentValue ,HttpServletRequest request) {
		ModelAndView modelview;
		modelview = policyService.premiumCalculate(structureValue,contentValue,request);
		logger.info("structureValue"+structureValue);
		logger.info("contentValue"+contentValue);
		return modelview;
	}
}


