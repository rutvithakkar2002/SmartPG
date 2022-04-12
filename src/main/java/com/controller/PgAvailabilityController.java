package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.PgBean;
import com.dao.PgDao;

@Controller
public class PgAvailabilityController {

	@Autowired
	PgDao pgdao;
	
	@GetMapping("/getallpgreport")
	public String getallpg(Model model)
	{
		List<PgBean> pgs=pgdao.getallpg();
		model.addAttribute("pgs",pgs);
		return "PgReport";
	}
	
	@GetMapping("/pgavailabilitywisereport")
	public String getAllPgByAvailability(@RequestParam("isavailable") int isavailable, Model model) {
		boolean fw =false;
		System.out.println(isavailable);
		if (isavailable == 0) {
			model.addAttribute("pgs", pgdao.getallpg());
		} else {
		
			if(isavailable == 2) {
				fw = false;
			}
			else if(isavailable == 1) {
				fw = true;
			}
			model.addAttribute("pgs",pgdao.getPgByisavailableId(fw));
		}
		return "PgReport";
	}
}
