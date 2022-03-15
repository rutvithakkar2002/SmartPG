package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.bean.UserBean;
import com.dao.PgDao;
import com.dao.UserDao;
@Controller	
public class AdminController {
	@Autowired
	UserDao userdao;
	@Autowired
	PgDao pgdao;
	
	@GetMapping("/admindashboard")
	public String admindashboard(HttpSession session,Model model)
	{
		
		int totalusercount=userdao.getAllUsers().size();
		model.addAttribute("totalusercount", totalusercount);
		
		int totalpgcount=pgdao.getallpg().size();
		model.addAttribute("totalpgcount", totalpgcount);
		
		
		
		return "AdminDashboard";
	}

	
	
}
