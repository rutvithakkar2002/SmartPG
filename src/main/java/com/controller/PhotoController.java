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
import com.bean.PhotoBean;
import com.bean.Rolebean;
import com.dao.PgDao;
import com.dao.PhotoDao;
import com.dao.RoleDao;

@Controller
public class PhotoController {
	@Autowired  
	PhotoDao photodao;
	@Autowired
	PgDao pgdao;
	@GetMapping("/newphoto")
	public String newphoto(Model model)
	{
		List<PgBean>pgs=pgdao.getallpg();
		model.addAttribute("pgs",pgs);
		return "NewPhoto";
	}
	@PostMapping("savephoto")  //To read data from url
	public String savephoto(PhotoBean photo)
	{
		photodao.insertphoto(photo);
		return "redirect:/listphoto";  //it will directly redirect to listrole url
	}
	
	@GetMapping("/listphoto")   //It will get data from list
	public String listphoto(Model model)
	{
		List<PhotoBean>photolist =photodao.getAllPhoto();
		model.addAttribute("photolist",photolist);  //dao to jsp
		return "ListPhoto";
	}	
	@GetMapping("/deletephoto/{photoid}")
	public String deletephoto(@PathVariable("photoid") int photoid)  //pathvariable helps to store roleid in 1 variable..
	{
		photodao.deletephoto(photoid);
		return "redirect:/listphoto";
	}
	
	@GetMapping("/editphoto")
	public String editrole(@RequestParam("photoid")int photoid,Model model)//? ->pass the value
	{
		PhotoBean photo = photodao.getphotoById(photoid);
		model.addAttribute("photo",photo);
		return "EditPhoto";
	}
	@PostMapping("/updatephoto")   //for database updation
	public String updatephoto(PhotoBean photo) {
		photodao.updatephoto(photo);
		return "redirect:/listphoto";
	}
}
