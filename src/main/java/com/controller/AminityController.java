package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.AmenityBean;
import com.bean.Rolebean;
import com.dao.AmenityDao;

@Controller
public class AminityController {
	@Autowired
	AmenityDao amenitydao;
	@GetMapping("/newamenity")
	public String newamenity()
	{
		return "NewAmenity";
	}
	@PostMapping("/saveamenity")  //To read data from url
	public String saveamenity(AmenityBean a)
	{
		System.out.println(a.getAmenityid());
		amenitydao.insertamenity(a);
		return "redirect:/listamenity"; 
	}
	@GetMapping("/listamenity")   //It will get data from list
	public String listRoles(Model model)
	{
		List<AmenityBean>amenities =amenitydao.getAllAmenity();
		model.addAttribute("amenities",amenities);
		return "ListAmenity";
	}	
	
	@GetMapping("/deleteamenity/{amenityid}")
	public String deleterole(@PathVariable("amenityid") int amenityid)  //pathvariable helps to store roleid in 1 variable..
	{
		System.out.println("deleteAmenity()");

		amenitydao.deleteamenity(amenityid);
		return "redirect:/listamenity"; 
	}
	@GetMapping("/editamenity")
	public String editrole(@RequestParam("amenityid")int amenityid,Model model)//? ->pass the value
	{
		AmenityBean a = amenitydao.getAmenityById(amenityid);
		model.addAttribute("a", a);
		return "EditAmenity";
	}
	@PostMapping("/updateamenity")   //for database updation
	public String updateamenity(AmenityBean a) {
		amenitydao.updateamenity(a);
		return "redirect:/listamenity";
	}
	

}
