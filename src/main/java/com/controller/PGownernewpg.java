package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;

import java.util.Date;
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
import com.bean.PgRateBean;
import com.bean.PhotoBean;
import com.bean.SubscriptionBean;
import com.bean.UserBean;
import com.dao.PgDao;
import com.dao.PgRateDao;
import com.dao.PhotoDao;
import com.dao.SubscriptionDao;
import com.dao.UserDao;

@Controller
public class PGownernewpg {
	@Autowired
	UserDao userdao;

	@Autowired
	PgDao pgdao;
	@Autowired
	SubscriptionDao subscriptiondao;

	@Autowired
	PgRateDao pgratedao;

	@Autowired
	PhotoDao photodao;

	public static String getDate() {
		Date date = new Date();
		SimpleDateFormat s = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss a");
		return s.format(date);
	}

	@GetMapping("/pgownernewpgrate")
	public String pgownernewpgrate(Model model) {
		List<PgBean> pg = pgdao.getallpg();
		model.addAttribute("pg", pg);

		return "Pgownerrate";
	}

	@GetMapping("/pgmainimage")
	public String pgmainimage(Model model) {
		List<PgBean> pg = pgdao.getallpg();
		model.addAttribute("pg", pg);

		return "MainImage";
	}
	
	
	
	@PostMapping("/savemainimage") // To read data from url
	public String savemainimage(@RequestParam("pgid")int pgid,@RequestParam("mainimgurl")  MultipartFile file, HttpSession session,Model model) {
		// photodao.insertphoto(photo);
		
		PgBean pg = pgdao.getPgById(pgid);
	 	
	
		System.out.println(file.getSize());
 
		String path = "C:\\Users\\Rutvi Thakkar\\Documents\\workspace-spring-tool-suite-4-4.13.1.RELEASE\\PG\\src\\main\\resources\\static\\assets\\PgMainImage";
		
		
		byte image[] = new byte[(int) file.getSize()];

		try {

			File PgMainImageFolder = new File(path, pgid + "");// 10 20 30
			PgMainImageFolder.mkdir(); // create folder if not present else it will not create

			photodao.insertMainImage("/assets/PgMainImage/" + pgid + "/" + file.getOriginalFilename(), pgid);
			// images/1/a.jpg

			image = file.getBytes();
			File f = new File(PgMainImageFolder,file.getOriginalFilename());
			f.createNewFile();
			FileOutputStream fos = new FileOutputStream(f);
			fos.write(image);
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "redirect:/pgownerpgimages"; // it will directly redirect to listrole url

	}

	@GetMapping("/pgownerpgimages")
	public String pgownerpgimages(Model model) {
		List<PgBean> pg = pgdao.getallpg();
		model.addAttribute("pg", pg);

		return "Pgownerpgimages";
	}

	@PostMapping("/savepgimage") // To read data from url
	public String savephoto(@RequestParam("pgid")int pgid,@RequestParam("imgurl")  MultipartFile[] file, HttpSession session,Model model) {
		// photodao.insertphoto(photo);
		
		PgBean pg = pgdao.getPgById(pgid);
	 	
	
		System.out.println(file.length);
 
		String path = "C:\\Users\\Rutvi Thakkar\\Documents\\workspace-spring-tool-suite-4-4.13.1.RELEASE\\PG\\src\\main\\resources\\static\\assets\\Pgimages";
		for (int i = 0; i < file.length; i++) {
			System.out.println(file[i].getOriginalFilename());
			System.out.println(file[i].getSize());
			byte image[] = new byte[(int) file[i].getSize()];
			try {

				File PgFolder = new File(path, pgid + ""); // 10 20 30	
				PgFolder.mkdir(); // create folder if not present else ignore
				photodao.insertimage("assets/Pgimages/" + pgid + "/" + file[i].getOriginalFilename(), pgid);
				image = file[i].getBytes();
				File f = new File(PgFolder, file[i].getOriginalFilename());
				f.createNewFile();
				FileOutputStream fos = new FileOutputStream(f);
				fos.write(image);
				fos.close();
			}

			catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "redirect:/pgownerdashboard"; // it will directly redirect to listrole url

	}

	@PostMapping("/savepgrate1")
	public String savepgrate1(@RequestParam("pgid")int pgid,PgRateBean rate) {
		
		
		pgratedao.addpgrate(rate);
		
		return "redirect:/pgmainimage";
		//return "redirect:/pgownerpgimages";
	}

	
	
	
	
	
	
	@GetMapping("/pgownerdashboardnewpg")
	public String pgownerdashboardnewpg(Model model) {
		List<UserBean> users = userdao.getAllUsers();
		List<SubscriptionBean> subscriptions = subscriptiondao.getAllplans();

		model.addAttribute("users", users);
		model.addAttribute("subscriptions", subscriptions);
		return "PGownerNewPG";
	}

	/*
	 * @GetMapping("/selectoneoffer") public String selectanoffer() { return
	 * "Selectoneoffer"; }
	 */	

	@PostMapping("/savepg1")
	public String savepg(PgBean p, HttpSession session) {
		String date = getDate();
		p.setCreatedon(date);
		session.setAttribute("pg", p);
		pgdao.addpg(p);

		return "redirect:/pgownernewpgrate";

		// return "redirect:/managePG";
		// return "redirect:/selectanoffer";//select an offer jsp
	}

}
