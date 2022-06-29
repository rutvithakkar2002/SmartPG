package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.PgBean;
import com.bean.Rolebean;
import com.bean.SubscribedUserBean;
import com.bean.SubscriptionBean;
import com.bean.UserBean;
import com.dao.PgDao;
import com.dao.SubscribedUsersDao;
import com.dao.SubscriptionDao;
import com.dao.UserDao;

@Controller
public class SubscribedUsersController {
	@Autowired
	SubscriptionDao subscriptiondao;
	
	@Autowired
	UserDao userdao;
	
	@Autowired
	PgDao pgdao;
	
	@Autowired
	SubscribedUsersDao subscribedusersdao;
	
	@GetMapping("/newsubscribeduser")
	public String newsubscribeduser(Model model)
	{
		List<SubscriptionBean>subscription=subscriptiondao.getAllplans();
		model.addAttribute("subscription", subscription);
		
//		List<PgBean>pg=pgdao.getallpg();
//		model.addAttribute("pg",pg);
//	
		List<UserBean>users=userdao.getNonUnsubscribedUsers();
		model.addAttribute("users",users);
		
		return "NewSubscribedUsers";
	}
	@PostMapping("savesubscribedusers")  //To read data from url
	public String savesubscribedusers(SubscribedUserBean sub)
	{
		System.out.println(sub.getStartdateofsub());
		subscribedusersdao.insertsubscribedusers(sub);
		return "redirect:/listsubscribedusers";  //it will directly redirect to listrole url
	}
	
	@GetMapping("/listsubscribedusers")   //It will get data from list
	public String listsubscribedusers(Model model)
	{
		
		List<SubscribedUserBean>sub =subscribedusersdao.getAllSubscribedUsers();
		model.addAttribute("sub",sub);
		
		return "ListSubscribedUsers";
	}	
	@GetMapping("/deletesubscribeduser/{subscribeid}")
	public String deletesubscribeduser(@PathVariable("subscribeid") int subscribeid)  //pathvariable helps to store roleid in 1 variable..
	{
		subscribedusersdao.deletesubscribeduser(subscribeid);
		return "redirect:/listsubscribedusers";
	}
	@GetMapping("/editsubscribeduser")
	public String editsubscribeduser(@RequestParam("subscribeid")int subscribeid,Model model)//? ->pass the value
	{
		List<SubscriptionBean>subscription=subscriptiondao.getAllplans();
		model.addAttribute("subscription", subscription);
		SubscribedUserBean subscribeduser = subscribedusersdao.getSubscribeid(subscribeid);
		model.addAttribute("subscribeduser",subscribeduser);
		return "EditSubscribedUser";
	}
	@PostMapping("/updatesubscribeduser")   //for database updation
	public String updatesubscribeduser(SubscribedUserBean sub,Model model) {
	
		subscribedusersdao.updatesubscribeduser(sub);
		return "redirect:/listsubscribedusers";
	}	
	
	
	
	
	
	
}
