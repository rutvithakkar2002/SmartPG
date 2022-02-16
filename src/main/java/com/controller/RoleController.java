package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.Rolebean;
import com.dao.RoleDao;

@Controller
public class RoleController {

	@Autowired  //to create only 1 object of all users who will execute thios application
	RoleDao roleDao;
	@GetMapping("newrole")  //To get the data from url
	public String newrole()
	{
		return "Newrole";
	}
	@PostMapping("saverole")  //To read data from url
	public String saverole(Rolebean role)
	{
		System.out.println(role.getRoleName());
		roleDao.insertrole(role);
		return "Login";
	}
	@GetMapping("/listroles")   //It will get data from list
	public String listRoles(Model model)
	{
		List<Rolebean>roles =roleDao.getAllRoles();
		model.addAttribute("roles",roles);
		return "ListRoles";
	}
	
}
