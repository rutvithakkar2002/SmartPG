package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.ForgetPasswordBean;
import com.bean.LoginBean;
import com.bean.UserBean;

@Controller
public class SessionController {
	@RequestMapping(value="signup",method=RequestMethod.GET)//for searching purpose
	public String signup()
	{
		System.out.println("I am from Signup");
		return "Signup";//This is your View page  //.jsp load
	}
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login()
	{
		System.out.println("I am from Login");
		return "Login";
	}
	@RequestMapping(value="forgetpassword",method=RequestMethod.GET)
	public String forgetpassword()
	{
		System.out.println("I am from forgetpassword");
		return "ForgetPassword";
	}
	@RequestMapping(value="saveuser",method=RequestMethod.POST)
	public String saveuser(UserBean user)
	{
		System.out.println(user.getFirstName());
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		return "Login";//login.jsp
	} 
	
	@RequestMapping(value="saveuser1",method=RequestMethod.POST)
	public String saveuser1(LoginBean user)
	{
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		return "";//
	} 
	
	@RequestMapping(value="saveuser2",method=RequestMethod.POST)
	public String saveuser1(ForgetPasswordBean user)
	{
		System.out.println(user.getEmail());
		return "Login";//
	} 
	
}	
