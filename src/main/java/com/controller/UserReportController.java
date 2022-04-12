package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.PgBean;
import com.bean.Rolebean;
import com.bean.UserBean;
import com.dao.PgDao;
import com.dao.RoleDao;
import com.dao.UserDao;

@Controller
public class UserReportController {

	@Autowired
	UserDao userdao;
	
	@Autowired
	RoleDao roledao;
	
	@GetMapping("/getalluserreport")
	public String getalluserreport(Model model)
	{
		List<Rolebean> roles=roledao.getAllRoles();
		model.addAttribute("roles",roles);
		
		List<UserBean> users=userdao.getAllUsers();
		model.addAttribute("users",users);
		return "UserReport";
	}
	
	@GetMapping("/userreport")
	public String getAllRoles(@RequestParam("roleId") int roleId, Model model) {
		if (roleId == 0) {
			model.addAttribute("users", userdao.getAllUsers());
		} else {
			model.addAttribute("users", userdao.getUserByRoleId(roleId));
		}
		model.addAttribute("roles",roledao.getAllRoles());
		return "UserReport";
	}
}
