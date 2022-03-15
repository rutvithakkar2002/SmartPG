package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.ForgetPasswordBean;
import com.bean.LoginBean;
import com.bean.UserBean;
import com.dao.UserDao;

@Controller
public class SessionController {
	
	@Autowired
	UserDao userDao;

	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping(value="signup",method=RequestMethod.GET)//for searching purpose
	public String signup()
	{
		System.out.println("I am from Signup");
		return "Signup";//This is your View page  //.jsp load
	}
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login2() {
		return "Login";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "Login";// Login.jsp
	}

	@PostMapping("/login")
	public String authenticate(UserBean user,Model model,HttpSession session) {

		boolean isCorrect = false;
		UserBean dbUser = userDao.getUserByEmail(user.getEmail());
		if (dbUser != null) {

			if (bcryptPasswordEncoder.matches(user.getPassword(), dbUser.getPassword()) == true) {
				isCorrect = true; //login successfully
				
				session.setAttribute("user", dbUser);
				
				System.out.println(user.getFirstName());
			}
		}

		if (isCorrect == true) {
			//admin  AdminDashBoard 
			//Pg owner 
			//Customer 
			if(dbUser.getRoleId()==2)
			{
				return "redirect:/pgownerdashboard";
			}
			else if(dbUser.getRoleId()==4)
			{
				return "redirect:/admindashboard";
			}
			else if(dbUser.getRoleId()==6)
			{
				return "redirect:/customerdashboard";
			}
			else
			{
				return "Home";
			}
			//System.out.println("Done");	
			//return "Home";
		}else {   //login error
			model.addAttribute("error","Invalid Credentials");
			return "Login";
		}
	}

	@RequestMapping(value = "forgetpassword", method = RequestMethod.GET)
	public String forgetPassword() {
		return "ForgetPassword";

	}
	
	
	/*@RequestMapping(value = "forgetpassword",method = RequestMethod.POST)
	public String forgetPassword(ForgetPasswordBean user) {
		System.out.println(user.getEmail());
		return "Login";
	}*/
	
	@PostMapping("/forgetpassword")
	public String forgetPassword(UserBean user, Model model, HttpSession session) {
		UserBean dbUser = userDao.getUserByEmail(user.getEmail());

		if (dbUser == null) {
			model.addAttribute("error", "Please Enter Valid Email");
			return "ForgetPassword";

		} else {
			int otp = (int) (Math.random() * 1000000); // 0325842.15621 * 1000000
			session.setAttribute("otp", otp);
			session.setAttribute("email", user.getEmail());   //we enter 
			model.addAttribute("msg", "Otp is generated and sent to your email!!!");  //database to jsp
			System.out.println("your otp is => " + otp);
			/// send email to user

			return "NewPassword";
		}

	}
	
	@PostMapping("/updatepassword")
	public String updatePassword(UserBean user, HttpSession session,Model model) {
		int otp = (int) session.getAttribute("otp");
		String email = (String) session.getAttribute("email");

		if (otp == user.getOtp() && email.equalsIgnoreCase(user.getEmail())) { //true

			String encPassword = bcryptPasswordEncoder.encode(user.getPassword()); 
			user.setPassword(encPassword);


			userDao.updatePassword(user);

			model.addAttribute("msg","Password Modified Please Login");
			return "Login";
		}else {
			model.addAttribute("error","Your data mismatch with our records!!!");
			return "NewPassword";
		}
	}
	@GetMapping("/logout")
	public String Logout(HttpSession session) {
		session.invalidate(); 
		return "redirect:/login";
		
	}

	@RequestMapping(value = "signup", method = RequestMethod.POST)
	public String saveUser(UserBean user) {
		// fn em pwd ==> bean
		System.out.println(user.getFirstName());
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		return "Login";
	}
	
	
	
	
}	
