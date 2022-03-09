package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.Rolebean;
import com.dao.RoleDao;

@Controller
public class RoleController {

	@Autowired  //to create only 1 object of all users who will execute this application
	RoleDao roleDao;
	@GetMapping("newrole")  //To get the data from url
	public String newRole()
	{
		
		return "Newrole";
	}
	@PostMapping("saverole")  //To read data from url
	public String saveRole(Rolebean role)
	{
		System.out.println(role.getRoleName());
		roleDao.insertrole(role);
		return "redirect:/listroles";  //it will directly redirect to listrole url
	}
	
	@GetMapping("/listroles")   //It will get data from list
	public String listRoles(Model model)
	{
		List<Rolebean>roles =roleDao.getAllRoles();
		model.addAttribute("roles",roles);
		return "ListRoles";
	}	
	@GetMapping("/deleterole/{roleId}")
	public String deleterole(@PathVariable("roleId") int roleId)  //pathvariable helps to store roleid in 1 variable..
	{
		System.out.println("deleteRole()");

		roleDao.deleterole(roleId);
		return "redirect:/listroles";
	}
	@GetMapping("/editrole")
	public String editrole(@RequestParam("roleId")int roleId,Model model)//? ->pass the value
	{
		Rolebean role = roleDao.getRoleById(roleId);
		model.addAttribute("role", role);
		return "EditRole";
	}
	@PostMapping("/updaterole")   //for database updation
	public String updateRole(Rolebean role) {
		roleDao.updateRole(role);
		return "redirect:/listroles";
	}
}
