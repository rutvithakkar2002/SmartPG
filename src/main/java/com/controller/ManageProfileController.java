package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.UserBean;
import com.dao.UserDao;

@Controller
public class ManageProfileController {

	@Autowired
	UserDao userDao;
	
	@GetMapping("/edituserprofile")  //To get the data from url
	public String edituserprofile(@RequestParam("userId") int userId,Model model)
	{
		UserBean user = userDao.getUserById(userId);
		model.addAttribute("user", user);
		return "ManageUserProfile";
	}
	
	@PostMapping("/updateuserprofile")   //updateuserprofile for database updation
	public String updateuserprofile(UserBean user,HttpSession session){
		System.out.println("method in");
		userDao.updateuser(user);
		session.setAttribute("user", user);
		System.out.println("method out");
		return "redirect:/pgownerdashboard";
	}
}
