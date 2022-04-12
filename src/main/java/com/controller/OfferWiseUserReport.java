package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.bean.SubscribedUserBean;
import com.bean.SubscriptionBean;
import com.dao.SubscribedUsersDao;
import com.dao.SubscriptionDao;


@Controller
public class OfferWiseUserReport {
	
	@Autowired
	SubscriptionDao subscriptiondao;
	
	@Autowired
	SubscribedUsersDao subscribedusersdao;
	
	@GetMapping("/offerwiseuserreport")
	public String offerwiseuserreport(Model model)
	{
		
		List<SubscriptionBean>subscription=subscriptiondao.getAllplans();
		model.addAttribute("subscription", subscription);
	
		List<SubscribedUserBean>subusers =subscribedusersdao.getAllSubscribedUsers();
		model.addAttribute("subusers",subusers);
		return "OfferwiseUserReport";
	}
	@GetMapping("/offerwisereport")
	public String getAllOffer(@RequestParam("subid") int subid, Model model) {
		if (subid == 0) {
			model.addAttribute("subusers", subscribedusersdao.getAllSubscribedUsers());
		} else {
			model.addAttribute("subusers",subscribedusersdao.getUserBysubId(subid));
		}
		model.addAttribute("subscription",subscriptiondao.getAllplans());
		return "OfferwiseUserReport";
	}	
}
