package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.AmenityBean;
import com.bean.PgAmenityBean;
import com.bean.PgBean;
import com.bean.Rolebean;
import com.bean.SubscriptionBean;
import com.bean.UserBean;
import com.dao.AmenityDao;
import com.dao.PgDao;
import com.dao.PgamenitiesDao;


@Controller
public class PgAmenitiesController {
	@Autowired
	PgDao pgdao;
	@Autowired
	AmenityDao amenitydao;
	@Autowired
	PgamenitiesDao pgamenitiesdao;
	
	
	@GetMapping("/newpgamenity")   //type url in chrome
	public String newpgamenity(Model model)
	{
		List<PgBean>pgs=pgdao.getallpg();
		List<AmenityBean>amenities=amenitydao.getAllAmenity();
		
		model.addAttribute("pgs", pgs);
		model.addAttribute("amenities", amenities);
		return "NewPgAmenities";  //call jsp
	}
	@PostMapping(value="/savepgamenity")  //To read data from url
	public String saveplan(PgAmenityBean p)
	{
		pgamenitiesdao.insertpgamenity(p);
		return "redirect:/listpgamenity";  //it will directly redirect to listplan url
	}	
	

	/*@GetMapping("/listpgamenity")   //It will get data from list
	public String listpgamenity(Model model)
	{
		List<PgAmenityBean>pgs =listpgamenity.getAllRoles();
		model.addAttribute("pgs",pgs);
		return "ListRoles";
	}	*/
	
	
	
	
	
	
	
}
