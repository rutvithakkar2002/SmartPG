package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.FeedbackBean;
import com.bean.PgBean;
import com.bean.Rolebean;
import com.bean.UserBean;
import com.dao.FeedbackDao;
import com.dao.PgDao;
import com.dao.UserDao;

@Controller
public class FeedbackController {
	
	@Autowired
	UserDao userdao;
	@Autowired
	FeedbackDao feedbackdao;
	@Autowired
	PgDao pgdao;
	@GetMapping("/newfeedback")  //To get the data from url
	public String newfeedback(Model model)
	{
		List<UserBean>users=userdao.getAllUsers();
		List<PgBean>pgs=pgdao.getallpg();
		model.addAttribute("users", users);
		model.addAttribute("pgs", pgs);
		return "NewFeedback";
	}
	@PostMapping("/savefeedback")
	public String savefeedback(FeedbackBean feedback)
	{
		feedbackdao.insertfeedback(feedback);  //userbean -->data store
		return "redirect:/getallfeedback";
	}
	@GetMapping("/getallfeedback")
	public String getAllUsers(Model model)
	{
		List<FeedbackBean> feedback =  feedbackdao.getAllFeedback();
		model.addAttribute("feedback",feedback);
		return "ListFeedback";
	}
	
	@GetMapping("/deletefeedback/{feedbackid}")
	public String deleterole(@PathVariable("feedbackid") int feedbackid)  //pathvariable helps to store roleid in 1 variable..
	{
		feedbackdao.deletefeedback(feedbackid);
		return "redirect:/getallfeedback";
	}
	
	@GetMapping("/editfeedback")
	public String editfeedback(@RequestParam("feedbackid")int feedbackid,Model model)//? ->pass the value
	{
		FeedbackBean feedback = feedbackdao.getFeedbackById(feedbackid);
		model.addAttribute("feedback", feedback);
		return "EditFeedback";
	}
	@PostMapping("/updatefeedback")   //for database updation
	public String updatefeedback(FeedbackBean feedback) {
		feedbackdao.updateFeedback(feedback);
		return "redirect:/getallfeedback";
	}
	
}
