package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.PgBean;
import com.bean.SubscriptionBean;
import com.bean.TransactionBean;
import com.bean.UserBean;
import com.dao.PgDao;
import com.dao.SubscriptionDao;
import com.dao.TransactionDao;
import com.dao.UserDao;
@Controller
public class OfferController {

	@Autowired
	SubscriptionDao subscriptionDao;
	
	@Autowired
	UserDao userdao;
	
	@Autowired
	PgDao pgdao;
	
	@Autowired
	TransactionDao transactiondao;
	
	@GetMapping("OfferPage") //URL Name you enter in browser
	public String pgownerdashboard(Model model)  
	{
		model.addAttribute("offers", subscriptionDao.getAllplans());
		return "Offerspage";   //JSP call
	}
	
	@GetMapping("/pgnewtransaction")
	public String pgnewtransaction(Model model,@RequestParam("offerid") int offerID)
	{
		System.out.println("Offerid "+offerID);
		SubscriptionBean sub = subscriptionDao.getplanById(offerID);
		model.addAttribute("sub", sub);
		return "Pgnewtransaction";
		
	}
	@PostMapping("/pgsavetransaction")
	public String savetransaction(TransactionBean transaction)
	{
		transactiondao.inserttransaction(transaction);
		return "redirect:/pgownerdashboard";
	}
	
	
}
