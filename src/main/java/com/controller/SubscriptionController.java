package com.controller;
import com.dao.SubscriptionDao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.Rolebean;
import com.bean.SubscriptionBean;
import com.dao.SubscriptionDao;

@Controller
public class SubscriptionController {

	@Autowired 
	SubscriptionDao subscriptiondao;
	@GetMapping("/addsubscription")  //To get the data from url
	public String addSubscription()
	{
		return "Subscription";// call jsp
	}
	@PostMapping(value="/Subscription")  //To read data from url
	public String saveplan(SubscriptionBean s)
	{
		System.out.println(s.getTimeduration());
		System.out.println(s.getAmount());
		subscriptiondao.insertplan(s);
		return "redirect:/listplans";  //it will directly redirect to listplan url
	}	
	@GetMapping(value="/listplans")   //It will get data from list
	public String listPlan(Model model)//it will take data into database to the jsp data..
	{
		List<SubscriptionBean> plans=subscriptiondao.getAllplans();
		model.addAttribute("plans",plans);
		return "ListSubscriptionInfo";
	}	
	
	@GetMapping("/deletesub/{subid}")
	public String deletesub(@PathVariable("subid") int subid)  //pathvariable helps to store roleid in 1 variable..
	{
		System.out.println("deleteplan()");
		subscriptiondao.deletesub(subid);
		return "redirect:/listplans";
	}
	@GetMapping("/editsub")
	public String editsub(@RequestParam("subid")int subid,Model model)//? ->pass the value
	{
		SubscriptionBean sub = subscriptiondao.getplanById(subid);
		model.addAttribute("sub", sub);
		return "EditSubscription";
	}
	@PostMapping("/updateplan")   //for database updation
	public String updateplan(SubscriptionBean sub) {
		subscriptiondao.updateplan(sub);
		return "redirect:/listplans";
	}
}


