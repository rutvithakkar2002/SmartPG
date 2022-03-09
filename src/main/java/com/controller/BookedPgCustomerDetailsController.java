package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.BookedPgCustomerDetailsBean;
import com.bean.PgBean;
import com.bean.Rolebean;
import com.bean.SubscribedUserBean;
import com.bean.UserBean;
import com.dao.BookedUserDao;
import com.dao.PgDao;
import com.dao.UserDao;

@Controller
public class BookedPgCustomerDetailsController {
	@Autowired
	UserDao userdao;
	@Autowired
	PgDao pgdao;
	@Autowired
	BookedUserDao bookeduserdao;

	@GetMapping("/newbookedcustomer")
	public String newbookedcustomer(Model model)
	{
		List<UserBean>users=userdao.getAllUsers();
		model.addAttribute("users",users);
		
		List<PgBean>pg=pgdao.getallpg();
		model.addAttribute("pg",pg);
		return "Newbookedcustomer";
	}
	
	@PostMapping("/savebookeduser")
	public String savebookeduser(BookedPgCustomerDetailsBean book)
	{
		bookeduserdao.insertbookeduser(book);
		 return "redirect:/listsubscribeuser";
	}
	@GetMapping("/listsubscribeuser")   //It will get data from list
	public String listsubscribeuser(Model model)
	{
		List<BookedPgCustomerDetailsBean>book =bookeduserdao.getallsubscribeuser();
		model.addAttribute("book",book);
		return "ListBookedUsers";
	}	
	
	@GetMapping("/deletebookeduser/{bookedid}")
	public String deletebookeduser(@PathVariable("bookedid") int bookedid)  //pathvariable helps to store roleid in 1 variable..
	{
		bookeduserdao.deletebookeduser(bookedid);
		return "redirect:/listsubscribeuser";
	}
	
	@GetMapping("/editbookeduser")
	public String editbookeduser(@RequestParam("bookedid")int bookedid,Model model)//? ->pass the value
	{
		List<PgBean>pg=pgdao.getallpg();
		model.addAttribute("pg",pg);
		BookedPgCustomerDetailsBean book = bookeduserdao.getBookedUserById(bookedid);
		model.addAttribute("book", book);
		return "EditbookedUser";
	}
	@PostMapping("/updatebookedUser")   //for database updation
	public String updatebookedUser(BookedPgCustomerDetailsBean book,Model model) {
		bookeduserdao.updateBookedUser(book);
		return "redirect:/listsubscribeuser";
	}
}
