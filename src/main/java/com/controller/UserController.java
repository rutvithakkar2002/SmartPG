package com.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.Rolebean;
import com.bean.UserBean;
import com.dao.RoleDao;
import com.dao.UserDao;

@Controller
public class UserController {
	
	@Autowired
	RoleDao roleDao;
	@Autowired
	UserDao userDao;
	
	public static String getDate()
	{
		Date date=new Date();
		SimpleDateFormat s=new SimpleDateFormat("dd/MM/yyyy hh:mm:ss a");
		return s.format(date);
	}
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@GetMapping("/newuser")   //type url in chrome
	public String newUser(Model model)
	{
		List<Rolebean>roles=roleDao.getAllRoles();
		model.addAttribute("roles",roles);
		return "NewUser";  //call jsp
	}
	@PostMapping("/saveuser")
	public String saveUser(UserBean user) {
		String plainPassword = user.getPassword();  
		String encPassword = bcryptPasswordEncoder.encode(plainPassword);//10 
		System.out.println(encPassword);
		user.setPassword(encPassword);
		
		String date = getDate();
		user.setCreatedat(date);
		
		userDao.adduser(user);  //userbean -->data store
		
		return "redirect:/login";
	}
	
	@GetMapping("/getallusers")
	public String getAllUsers(Model model)
	{
		List<UserBean> users =  userDao.getAllUsers();
		model.addAttribute("users",users);
		return "ListUsers";
	}
	
	@GetMapping("/deleteuser/{userId}")
	public String deleteuser(@PathVariable("userId") int userId)  //pathvariable helps to store roleid in 1 variable..
	{
		System.out.println("deleteuser()");

		userDao.deleteuser(userId);
		return "redirect:/getallusers";
	}
	
	@GetMapping("/edituser")
	public String edituser(@RequestParam("userId") int userId,Model model)//? ->pass the value
	{
		UserBean user = userDao.getUserById(userId);
		model.addAttribute("useredited", user);
		return "Edituser";
	}
	@PostMapping("/updateuser")   //for database updation
	public String updateuser(UserBean user) {
		userDao.updateuser(user);
		return "redirect:/getallusers";
	}
}
