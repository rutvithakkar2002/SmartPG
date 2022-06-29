package com.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.FeedbackCustomertowebBean;

import com.dao.CustomerToWebFeedbackDao;

@Controller
public class Customertowebcontroller {
	
	
	@Autowired
	CustomerToWebFeedbackDao custowebfeedbackdao;
	
	
	@GetMapping("/contactus1")
	public String contactus1()
	{
		
		return "ContactUs";
	}
	
	@PostMapping("/savefeedbackcustoweb")
	public String savefeedbackcustoweb(FeedbackCustomertowebBean custowebfeedback)
	{ 
		System.out.println("In Block");
		custowebfeedbackdao.insertcustomertowebfeedback(custowebfeedback);  //userbean -->data store
		System.out.println("end Block");
		return "redirect:/customerdashboard";
		
	}
}
