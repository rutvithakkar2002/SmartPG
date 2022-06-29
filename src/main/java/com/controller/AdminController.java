package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bean.PgBean;
import com.bean.SubscriptionBean;
import com.bean.UserBean;
import com.dao.PgDao;
import com.dao.ProfileDao;
import com.dao.SubscribedUsersDao;
import com.dao.SubscriptionDao;
import com.dao.UserDao;
@Controller	
public class AdminController {
	@Autowired
	UserDao userdao;
	@Autowired
	PgDao pgdao;
	
	@Autowired
	SubscriptionDao subscriptiondao;
	
	@Autowired
	SubscribedUsersDao subscribedusersdao;
	
	@Autowired
	ProfileDao profiledao;
	
	@GetMapping("/admindashboard")
	public String admindashboard(HttpSession session,Model model)
	{
		
		int totalusercount=userdao.getAllUsers().size();
		model.addAttribute("totalusercount", totalusercount);
		
		int totalpgcount=pgdao.getallpg().size();
		model.addAttribute("totalpgcount", totalpgcount);
		
		int totalrevenue=pgdao.getrevenuebypg();
		model.addAttribute("totalrevenue",totalrevenue);
		
		
		List<SubscriptionBean>  plans = subscriptiondao.getAllplans();
		model.addAttribute("plans", plans);
		
		int totalsilverofferusers=subscribedusersdao.getUserByoffername().size();
		model.addAttribute("totalsilverofferusers",totalsilverofferusers);
		
		int totalgoldenofferusers=subscribedusersdao.getUserByoffername2().size();
		model.addAttribute("totalgoldenofferusers",totalgoldenofferusers);
		
		int totaldiamondofferusers=subscribedusersdao.getUserByoffername3().size();
		model.addAttribute("totaldiamondofferusers",totaldiamondofferusers);
		
		
		return "AdminDashboard";
	}
	
	@GetMapping("/uploadprofile")
	public String uploadProfile()
	{
		return "UploadProfile";
	}
	
	@PostMapping("/saveprofile")
	public String saveProfile(@RequestParam("imgurl") MultipartFile file, HttpSession session)
	{
		
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getSize());
		
		
		UserBean user=(UserBean)session.getAttribute("user");
		int userId=user.getUserId();

		String path="C:\\Users\\Rutvi Thakkar\\Documents\\workspace-spring-tool-suite-4-4.13.1.RELEASE\\PG\\src\\main\\resources\\static\\assets\\proimages";
		byte image[]=new byte[(int)file.getSize()];
		try {
			
			File userFolder=new File(path,userId+"");  //10 20 30
			userFolder.mkdir(); //create folder if not present else ignore
			
			
			profiledao.updateProfile("assets/proimages/" + userId + "/" + file.getOriginalFilename(), userId);//// images/1/a.jpg
			
			image =file.getBytes();
			File f=new File(userFolder,file.getOriginalFilename());
			f.createNewFile();
			FileOutputStream fos=new FileOutputStream(f);
			fos.write(image);
			fos.close();
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	
		return "UploadProfile";
	}
	
	
}
