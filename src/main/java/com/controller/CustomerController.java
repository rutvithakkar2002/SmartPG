package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.bean.PgBean;
import com.bean.PgRateBean;
import com.bean.PhotoBean;
import com.dao.PgDao;
import com.dao.PgRateDao;
import com.dao.PhotoDao;

@Controller
public class CustomerController {
	
	
	@Autowired
	PgDao pgdao;
	
	@Autowired
	PgRateDao pgratedao;
	
	@Autowired
	PhotoDao photodao;
	
	
	
	@GetMapping("/customerdashboard")
	public String customerdashboard(Model model)
	{
	//	List<PgBean> pg=pgdao.getAllPGUserSide();
		//model.addAttribute("pg",pg);
		
	//	List<PhotoBean>photo=photodao.getAllPhoto();
	//	model.addAttribute(photo);
		
		List<PgRateBean>rate=pgratedao.getallpgrate2();
		model.addAttribute("rate",rate);
		System.out.println(rate.size());
		
		
		return "CustomerDashboard";
	}
	
	
/*	@GetMapping("/contactus1")
	public String contactus1()
	{
		
		return "ContactUs";
	}
	*/
	
	@GetMapping("/blog")
	public String Blog()
	{
		
		return "UserSideBlog";
	}
	
	@GetMapping("/properties")
	public String properties(Model model)
	{
		
		List<PgBean> pg=pgdao.getAllPGUserSide();
		model.addAttribute("pg",pg);
		
		List<PgRateBean>rate=pgratedao.getallpgrate2();
		model.addAttribute("rate",rate);
		
		
		return "UserSideProperties";
	}
}
