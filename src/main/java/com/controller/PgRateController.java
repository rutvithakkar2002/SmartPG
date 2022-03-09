package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.PgBean;
import com.bean.PgRateBean;
import com.bean.Rolebean;
import com.dao.PgDao;
import com.dao.PgRateDao;

@Controller
public class PgRateController {

	@Autowired
	PgDao pgdao;
	@Autowired
	PgRateDao pgratedao;
	@GetMapping("/newpgrate")
	public String newpgrate(Model model)
	{	
		List<PgBean>pg=pgdao.getallpg();
		model.addAttribute("pg", pg);
		return "NewPgRate";
	}
	
	@PostMapping("/savepgrate")
	public String savepgrate(PgRateBean rate)
	{
		pgratedao.addpgrate(rate);
		return "redirect:/getallpgrate";
	}
	@GetMapping("/getallpgrate")
	public String getallpgrate(Model model)
	{
		List<PgRateBean> pgrate =  pgratedao.getallpgrate();
		model.addAttribute("pgrate",pgrate);
		return "ListPgRate";
	}
	@GetMapping("/deletepgrate/{pgrateid}")
	public String deleterole(@PathVariable("pgrateid") int pgrateid)  //pathvariable helps to store roleid in 1 variable..
	{
		pgratedao.deletepgrate(pgrateid);
		return "redirect:/getallpgrate";
	}
	@GetMapping("/editpgrate")
	public String editpgrate(@RequestParam("pgrateid")int pgrateid,Model model)//? ->pass the value
	{
		List<PgBean>pg=pgdao.getallpg();
		model.addAttribute("pg", pg);
		PgRateBean rate =pgratedao.getPgrateById(pgrateid);
		model.addAttribute("rate", rate);
		return "EditPgRate";
	}
	@PostMapping("/updatepgrate")   //for database updation
	public String updatepgrate(PgRateBean rate) {
		pgratedao.updatepgrate(rate);
		return "redirect:/getallpgrate";
	}
	
	
	
	
	
}
