package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.PgBean;
import com.bean.Rolebean;
import com.bean.TransactionBean;
import com.bean.UserBean;
import com.dao.PgDao;
import com.dao.TransactionDao;
import com.dao.UserDao;

@Controller
public class TransactionController {
	@Autowired
	UserDao userdao;
	@Autowired
	PgDao pgdao;
	@Autowired
	TransactionDao transactiondao;
	@GetMapping("/newtransaction")
	public String newtransaction(Model model)
	{
		List<UserBean>users=userdao.getAllUsers2();
		model.addAttribute("users", users);
		List<PgBean>pg=pgdao.getallpg();
		model.addAttribute("pg", pg);
		return "NewTransaction";
	}
	@PostMapping("/savetransaction")
	public String savetransaction(TransactionBean transaction)
	{
		transactiondao.inserttransaction(transaction);
		return "redirect:/listtransaction";
	}
	@GetMapping("/listtransaction")   //It will get data from list
	public String listtransaction(Model model)
	{
		
		List<UserBean>users=userdao.getAllUsers2();
		model.addAttribute("users", users);
		List<PgBean>pg=pgdao.getallpg();
		model.addAttribute("pg", pg);
		List<TransactionBean>transaction =transactiondao.getAllTransaction();
		model.addAttribute("transaction",transaction);
		return "ListTransaction";
	}
	
	@GetMapping("/deletetransaction/{paymentid}")
	public String deletetransaction(@PathVariable("paymentid") int paymentid)  //pathvariable helps to store roleid in 1 variable..
	{
		transactiondao.deletetransaction(paymentid);
		return "redirect:/listtransaction";
	}
	@GetMapping("/edittransaction")
	public String edittransaction(@RequestParam("paymentid")int paymentid,Model model)//? ->pass the value
	{
		List<UserBean>user=userdao.getAllUsers();
		model.addAttribute("user", user);
		List<PgBean>pg=pgdao.getallpg();
		model.addAttribute("pg", pg);
		TransactionBean transaction= transactiondao.getTransactionById(paymentid);
		model.addAttribute("transaction", transaction);
		return "EditTransaction";
	}
	@PostMapping("/updatetransaction")   //for database updation
	public String updatetransaction(TransactionBean transaction) {
		transactiondao.updateTransaction(transaction);
		return "redirect:/listtransaction";
	}
	
	
	
}
