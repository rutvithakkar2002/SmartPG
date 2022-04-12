package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.bean.SubscriptionBean;
import com.dao.PgDao;
import com.dao.SubscribedUsersDao;
import com.dao.SubscriptionDao;
import com.dao.UserDao;
@Controller	
public class AdminController {
	@Autowired
	UserDao userdao;
	@Autowired
	PgDao pgdao;
	
	@Autowired
	SubscriptionDao subscriptiondao;
	
	@Autowired
	SubscribedUsersDao subscribedusersdao;
	
	@GetMapping("/admindashboard")
	public String admindashboard(HttpSession session,Model model)
	{
		
		int totalusercount=userdao.getAllUsers().size();
		model.addAttribute("totalusercount", totalusercount);
		
		int totalpgcount=pgdao.getallpg().size();
		model.addAttribute("totalpgcount", totalpgcount);
			
		List<SubscriptionBean>  plans = subscriptiondao.getAllplans();
		model.addAttribute("plans", plans);
		
		int totalsilverofferusers=subscribedusersdao.getUserByoffername().size();
		model.addAttribute("totalsilverofferusers",totalsilverofferusers);
		
		int totalgoldenofferusers=subscribedusersdao.getUserByoffername2().size();
		model.addAttribute("totalgoldenofferusers",totalgoldenofferusers);
		
		int totaldiamondofferusers=subscribedusersdao.getUserByoffername3().size();
		model.addAttribute("totaldiamondofferusers",totaldiamondofferusers);
		
		
		return "AdminDashboard";
	}
}
