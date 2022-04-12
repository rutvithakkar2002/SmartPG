package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.PgBean;
import com.bean.TransactionBean;
import com.bean.UserBean;
import com.dao.PgDao;
import com.dao.TransactionDao;
import com.dao.UserDao;
@Controller
public class OfferController {

	
	@Autowired
	UserDao userdao;
	
	@Autowired
	PgDao pgdao;
	
	@Autowired
	TransactionDao transactiondao;
	
	@GetMapping("OfferPage") //URL Name you enter in browser
	public String pgownerdashboard()  
	{
		return "Offerspage";   //JSP call
	}
	
	@GetMapping("/pgnewtransaction")
	public String pgnewtransaction(Model model)
	{
		
		List<UserBean>users=userdao.getAllUsers2();
		model.addAttribute("users", users);
		List<PgBean>pg=pgdao.getallpg();
		model.addAttribute("pg", pg);
		return "Pgnewtransaction";
		
	}
	@PostMapping("/pgsavetransaction")
	public String savetransaction(TransactionBean transaction)
	{
		transactiondao.inserttransaction(transaction);
		return "redirect:/pgownerdashboard";
	}
	
	
}
