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
public class CategoryWisePg {

	@Autowired
	PgDao pgdao;
	
	@GetMapping("/categorywisepgreport")
	public String categorywisereport(Model model)
	{
		List<PgBean>pg=pgdao.getallpg();
		model.addAttribute("pg",pg);
		return "CategorywisePg";
	}
	
	@GetMapping("/categorywisereport")
	public String getAllPgByCatgoryWise(@RequestParam("forwhom") int forwhom, Model model) {
		String fw = "";
		if (forwhom == 0) {
			model.addAttribute("pg", pgdao.getallpg());
		} else {
			System.out.println("Forwhom = "+forwhom);
			if(forwhom == 1) {
				fw = "For only Boys";
			}
			else if(forwhom ==2 ) {
				fw = "For only Girls";
			}else if(forwhom == 3 ) {
				fw = "For Boys and Girls Both";
			}
			model.addAttribute("pg",pgdao.getPgByForwhomId2(fw));
			
			
		}
		return "CategorywisePg";
	}
}
