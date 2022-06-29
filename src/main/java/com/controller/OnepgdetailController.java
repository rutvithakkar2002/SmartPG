package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.PgBean;
import com.dao.PgDao;

@Controller
public class OnepgdetailController {

	@Autowired
	PgDao pgdao;
	@GetMapping("/viewpgimages")
	public String viewpgimages(@RequestParam("pgid")int pgid,Model model)//? ->pass the value
	{
		PgBean pg = pgdao.getPgById(pgid);
		model.addAttribute("pg", pg);
		return "onepgdetail";
	}
	
}
