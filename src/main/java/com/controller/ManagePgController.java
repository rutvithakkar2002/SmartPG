package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.PgBean;
import com.bean.SubscriptionBean;
import com.bean.UserBean;
import com.dao.PgDao;
import com.dao.SubscriptionDao;
import com.dao.UserDao;

@Controller
public class ManagePgController {	
	
	@Autowired
	SubscriptionDao subscriptiondao;
	
	@Autowired
	PgDao pgdao;
	
	@Autowired
	UserDao userdao;
	
	@GetMapping("managepg")
	public String managepgprofile(Model model)
	{
		
		List<SubscriptionBean>subscription=subscriptiondao.getAllplans();
		model.addAttribute("subscription",subscription);
		
		return "ManagePg";
	}
	
	
	@GetMapping("/editpgdetail")
	public String editpgdetail(@RequestParam("pgid")int pgid,Model model)//? ->pass the value
	{
		PgBean pg = pgdao.getPgById(pgid);
		model.addAttribute("pg", pg);
		
		List<SubscriptionBean> subscription=subscriptiondao.getAllplans();
		model.addAttribute("subscription",subscription);
		
		return "ManagePg";
	}
	@GetMapping("/managePG")
	public String managePG(HttpSession session,Model model) {
		UserBean user = (UserBean)session.getAttribute("user");
		int userid = user.getUserId();
		List<PgBean> pg = pgdao.getAllUserSpecific(userid);
		model.addAttribute("pgs", pg);
		return "UserWisePG";
	}
	@PostMapping("/updatepgdetail")   //for database updation
	public String updatepgdetail(PgBean pg,Model model) {
		pgdao.updatepg(pg);
		return "redirect:/pgownerdashboard";
	}
	@GetMapping("/pgownernewpg")
	public String newpg(HttpSession session,Model model)
	{

		UserBean user = (UserBean)session.getAttribute("user");
		int userid = user.getUserId();
		
		int totalpgcount=pgdao.getAllUserSpecific(userid).size();
		model.addAttribute("totalpgcount",totalpgcount);
		
		if(totalpgcount>3)
		{
			return "errorpage";
		}
		else
		{
			List<UserBean> users=userdao.getAllUsers();
			List<SubscriptionBean> subscriptions=subscriptiondao.getAllplans();
		
			model.addAttribute("users",users);
			model.addAttribute("subscriptions",subscriptions);
			
			//....
			return "PGownerNewPG";
		}
		
	
		
		
	}
	
	
	

	
	@GetMapping("/PGownereditpg")
	public String PGownereditpg(@RequestParam("pgid")int pgid,Model model)//? ->pass the value
	{
		PgBean pg = pgdao.getPgById(pgid);
		model.addAttribute("pg", pg);
		
		List<PgBean> pgs=pgdao.getallpg();
		model.addAttribute("pgs",pgs);
		
		List<SubscriptionBean> subscription=subscriptiondao.getAllplans();
		model.addAttribute("subscription",subscription);
		
		return "PGownereditpg";
	}
	@PostMapping("/pgownerupdatepg")   //for database updation
	public String pgownerupdatepg(PgBean pg,Model model) {
		pgdao.updatepg(pg);
		return "redirect:/managePG";
	}

	
	
	
	
	
	
}
