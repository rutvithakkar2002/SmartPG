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
import com.dao.SubscriptionDao;
import com.dao.UserDao;

@Controller
public class ManagePgController {	
	
	@Autowired
	SubscriptionDao subscriptiondao;
	
	@Autowired
	PgDao pgdao;
	
	@Autowired
	UserDao userdao;
	
	@Autowired
	ProfileDao profiledao;
	
	@GetMapping("managepg")
	public String managepgprofile(Model model)
	{
		
		List<SubscriptionBean>subscription=subscriptiondao.getAllplans();
		model.addAttribute("subscription",subscription);
		
		return "ManagePg";
	}
	
	
	@GetMapping("errorpage")
	public String errorpage()
	{
			return "errorpage";
	}
	
	
	
	@GetMapping("/editpgdetail")
	public String editpgdetail(@RequestParam("pgid")int pgid,Model model)//? ->pass the value
	{
		PgBean pg = pgdao.getPgById(pgid);
		model.addAttribute("pg", pg);
		
		List<SubscriptionBean> subscription=subscriptiondao.getAllplans();
		model.addAttribute("subscription",subscription);
		
		return "ManagePg";
	}
	@GetMapping("/managePG")
	public String managePG(HttpSession session,Model model) {
		UserBean user = (UserBean)session.getAttribute("user");
		int userid = user.getUserId();
		List<PgBean> pg = pgdao.getAllUserSpecific(userid);
		model.addAttribute("pgs", pg);
		return "UserWisePG";
	}
	@PostMapping("/updatepgdetail")   //for database updation
	public String updatepgdetail(PgBean pg,Model model) {
		pgdao.updatepg(pg);
		return "redirect:/pgownerdashboard";
	}
	@GetMapping("/pgownernewpg")
	public String newpg(HttpSession session,Model model)
	{

		UserBean user = (UserBean)session.getAttribute("user");
		int userid = user.getUserId();
		
	
		//maximum PG logic
		/*int totalpgcount=pgdao.getAllUserSpecific(userid).size();
		model.addAttribute("totalpgcount",totalpgcount);
		
		System.out.println(totalpgcount);
		if(totalpgcount==3)
		{
			return "errorpage";
		}
		else
		{*/
			List<UserBean> users=userdao.getAllUsers3();
			List<SubscriptionBean> subscriptions=subscriptiondao.getAllplans();
		
			model.addAttribute("users",users);
			model.addAttribute("subscriptions",subscriptions);
			
			//....
			return "PGownerNewPG";
		//}	
	}
	
	@GetMapping("/PGownereditpg")
	public String PGownereditpg(@RequestParam("pgid")int pgid,Model model)//? ->pass the value
	{
		PgBean pg = pgdao.getPgById(pgid);
		model.addAttribute("pg", pg);
		
		List<PgBean> pgs=pgdao.getallpg();
		model.addAttribute("pgs",pgs);
		
		List<SubscriptionBean> subscription=subscriptiondao.getAllplans();
		model.addAttribute("subscription",subscription);
		
		return "PGownereditpg";
	}
	@PostMapping("/pgownerupdatepg")   //for database updation
	public String pgownerupdatepg(PgBean pg,Model model) {
		pgdao.updatepg(pg);
		return "redirect:/managePG";
	}

	
	
	
	
	@GetMapping("/pgsideuploadprofile")
	public String uploadProfile()
	{
		return "PgOwnerUploadProfile";
	}
	
	@PostMapping("/savepgprofile")
	public String savepgProfile(@RequestParam("imgurl") MultipartFile file, HttpSession session)
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
		

	
		return "PgOwnerUploadProfile";
	}
}
