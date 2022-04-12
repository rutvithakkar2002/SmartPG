package com.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.PgBean;
import com.bean.SubscriptionBean;
import com.bean.UserBean;
import com.dao.PgDao;
import com.dao.SubscriptionDao;
import com.dao.UserDao;

@Controller
public class PGownernewpg {
	@Autowired
	UserDao userdao;

	@Autowired 
	PgDao pgdao;
	@Autowired
	SubscriptionDao subscriptiondao;
	
	public static String getDate()
	{
		Date date=new Date();
		SimpleDateFormat s=new SimpleDateFormat("dd/MM/yyyy hh:mm:ss a");
		return s.format(date);
	}
	
	@GetMapping("/pgownerdashboardnewpg")
	public String pgownerdashboardnewpg(Model model)
	{
		List<UserBean> users=userdao.getAllUsers();
		List<SubscriptionBean> subscriptions=subscriptiondao.getAllplans();
		
		model.addAttribute("users",users);
		model.addAttribute("subscriptions",subscriptions);
		return "PGownerNewPG";
	}
	
	@PostMapping("/savepg1")
	public String savepg(PgBean p)
	{
		String date = getDate();
		p.setCreatedon(date);
		
		pgdao.addpg(p);
		return "redirect:/managePG";
	}
	
}
