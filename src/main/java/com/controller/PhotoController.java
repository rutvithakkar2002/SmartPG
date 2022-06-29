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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bean.PgBean;
import com.bean.PhotoBean;

import com.dao.PgDao;
import com.dao.PhotoDao;


@Controller
public class PhotoController {
	@Autowired  
	PhotoDao photodao;
	@Autowired
	PgDao pgdao;
	@GetMapping("/newphoto")
	public String newphoto(Model model)
	{
		List<PgBean>pgs=pgdao.getallpg();
		model.addAttribute("pgs",pgs);
		return "NewPhoto";
	}
	@PostMapping("/savephoto")  //To read data from url
	public String savephoto(PhotoBean photo)
	{
		photodao.insertphoto(photo);
		
	/*	System.out.println(file.getOriginalFilename());
		System.out.println(file.getSize());
		
		
		PgBean pg=(PgBean)session.getAttribute("pg");
		int pgid=pg.getPgid();

		String path="C:\\Users\\Rutvi Thakkar\\Documents\\workspace-spring-tool-suite-4-4.13.1.RELEASE\\PG\\src\\main\\resources\\static\\assets\\Pgimages";
		byte image[]=new byte[(int)file.getSize()];
		try {
			
			File userFolder=new File(path,pgid+"");  //10 20 30
			userFolder.mkdir(); //create folder if not present else ignore
			
		
		photodao.insertimage("assets/Pgimages/" + pgid + "/" + file.getOriginalFilename(), pgid);
		
		image =file.getBytes();
		File f=new File(userFolder,file.getOriginalFilename());
		f.createNewFile();
		FileOutputStream fos=new FileOutputStream(f);
		fos.write(image);
		fos.close();
		
		
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}*/
		
		return "redirect:/listphoto";  //it will directly redirect to listrole url
	}
	
	@GetMapping("/listphoto")   //It will get data from list
	public String listphoto(Model model)
	{
		List<PhotoBean>photolist =photodao.getAllPhoto();
		model.addAttribute("photolist",photolist);  //dao to jsp
		return "ListPhoto";
	}	
	@GetMapping("/deletephoto/{photoid}")
	public String deletephoto(@PathVariable("photoid") int photoid)  //pathvariable helps to store roleid in 1 variable..
	{
		photodao.deletephoto(photoid);
		return "redirect:/listphoto";
	}
	
	@GetMapping("/editphoto")
	public String editrole(@RequestParam("photoid")int photoid,Model model)//? ->pass the value
	{
		PhotoBean photo = photodao.getphotoById(photoid);
		model.addAttribute("photo",photo);
		return "EditPhoto";
	}
	@PostMapping("/updatephoto")   //for database updation
	public String updatephoto(PhotoBean photo) {
		photodao.updatephoto(photo);
		return "redirect:/listphoto";
	}
}
