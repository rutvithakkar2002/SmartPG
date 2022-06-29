package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.PgBean;
import com.bean.PgRateBean;
import com.bean.UserBean;
import com.dao.DropdownDao;
import com.dao.PgDao;
import com.dao.PgRateDao;

@Controller
public class DropdownController {

	@Autowired
	DropdownDao dropdowndao;
	@Autowired
	PgDao pgdao;
	@Autowired
	PgRateDao pgratedao;
	
	@PostMapping("/result")
	public String info(@RequestParam("country")String country,@RequestParam("state")String state,@RequestParam("city")String city, Model model) {
		
		// List<PgBean>pgs=pgdao.getallpg();
		//model.addAttribute("pgs", pgs);
		
		
		List<PgRateBean>rate=dropdowndao.getinfo(country, state, city);
		System.out.println("Ahmedabad");
		model.addAttribute("rate",rate);
		return "CustomerDashboard";
	}	
	
	
}
