package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.Rolebean;
import com.bean.TransactionBean;
import com.bean.TransactionDetailsBean;
import com.bean.UserBean;
import com.dao.TransactionDao;
import com.dao.TransactionDetailDao;
import com.dao.UserDao;
@Controller
public class TransactionDetailsController {
	@Autowired
	TransactionDetailDao transactiondetaildao;
	@Autowired
	UserDao userdao;
	@Autowired
	TransactionDao transactiondao;
	@GetMapping("/newtransactiondetail")   //type url in chrome
	public String newtransactiondetail(Model model)
	{
		List<UserBean>user=userdao.getAllUsers();
		model.addAttribute("user",user);
		List<TransactionBean>payment=transactiondao.getAllTransaction();
		model.addAttribute("payment",payment);
		return "NewTransactionDetail";  //call jsp
	}
	@PostMapping("savetransactiondetail")  //To read data from url
	public String savetransactiondetail(TransactionDetailsBean transaction)
	{
		transactiondetaildao.inserttransactiondetail(transaction);
		return "redirect:/listtransactiondetail";  //it will directly redirect to listrole url
	}
	@GetMapping("/listtransactiondetail")   //It will get data from list
	public String listtransactiondetail(Model model)
	{
		List<TransactionDetailsBean>transactiondetails =transactiondetaildao.getalltransactiondetail();
		model.addAttribute("transactiondetails",transactiondetails);
		return "ListTransactionDetail";
	}
	@GetMapping("/deletetransactiondetail/{transactionid}")
	public String deletetransactiondetail(@PathVariable("transactionid") int transactionid)  //pathvariable helps to store roleid in 1 variable..
	{
		transactiondetaildao.deletetransactiondetail(transactionid);
		return "redirect:/listtransactiondetail"; 
	}
	@GetMapping("/edittransactiondetail")
	public String edittransactiondetail(@RequestParam("transactionid")int transactionid,Model model)//? ->pass the value
	{
		TransactionDetailsBean transactiondetail = transactiondetaildao.getTransactionById(transactionid);
		model.addAttribute("transactiondetail",transactiondetail);
		return "EditTransactionDetail";
	}
	@PostMapping("/updatetransactiondetail")   //for database updation
	public String updatetransactiondetail(TransactionDetailsBean transactiondetail) {
		transactiondetaildao.updatetransactiondetail(transactiondetail);
		return "redirect:/listtransactiondetail";
	}
	
	
}
