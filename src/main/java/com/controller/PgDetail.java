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
import com.bean.SubscriptionBean;
import com.bean.UserBean;
import com.dao.PgDao;
import com.dao.SubscriptionDao;
import com.dao.UserDao;

@Controller
public class PgDetail {
	@Autowired
	UserDao userdao;
	@Autowired
	PgDao pgdao;
	@Autowired
	SubscriptionDao subscriptiondao;
	@GetMapping("/newpg")
	public String newpg(Model model)
	{
		List<UserBean> users=userdao.getAllUsers();
		List<SubscriptionBean> subscriptions=subscriptiondao.getAllplans();
		
		model.addAttribute("users",users);
		model.addAttribute("subscriptions",subscriptions);
		return "NewPG";
	}
	@PostMapping("/savepg")
	public String savepg(PgBean p)
	{
		pgdao.addpg(p);
		return "redirect:/getallpg";
	}
	@GetMapping("/getallpg")
	public String getallpg(Model model)
	{
		List<PgBean> pgs=pgdao.getallpg();
		model.addAttribute("pgs",pgs);
		return "ListPg";
	}
	@GetMapping("/deletepg/{pgid}")
	public String deletepg(@PathVariable("pgid") int pgid)  //pathvariable helps to store roleid in 1 variable..
	{
		pgdao.deletepg(pgid);
		return "redirect:/getallpg";
	}
	@GetMapping("/editpg")
	public String editpg(@RequestParam("pgid")int pgid,Model model)//? ->pass the value
	{
		PgBean pg = pgdao.getPgById(pgid);
		model.addAttribute("pg", pg);
		
		List<PgBean> pgs=pgdao.getallpg();
		model.addAttribute("pgs",pgs);
		
		List<SubscriptionBean> subscription=subscriptiondao.getAllplans();
		model.addAttribute("subscription",subscription);
		return "EditPg";
	}
	@PostMapping("/updatepg")   //for database updation
	public String updatepg(PgBean pg,Model model) {
		pgdao.updatepg(pg);
		return "redirect:/getallpg";
	}
	
}
