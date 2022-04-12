package com.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.bean.UserBean;
import com.dao.PgDao;


@Controller
public class PgController {	

	
	@Autowired
	PgDao pgdao;
	
	@GetMapping("pgownerdashboard") //URL Name you enter in browser
	public String pgownerdashboard(HttpSession session,Model model)  
	{
		
		UserBean user = (UserBean)session.getAttribute("user");
		int userid = user.getUserId();
		
	//	int totalusercount=pgdao.getAllUserSpecific(userid).size();
	//	model.addAttribute("totalusercount", totalusercount);
		
		int totalpgcount=pgdao.getAllUserSpecific(userid).size();
		model.addAttribute("totalpgcount",totalpgcount);
		
		return "PgOwnerDashboard";   //JSP call
	}
	
	
	
	
	
}
