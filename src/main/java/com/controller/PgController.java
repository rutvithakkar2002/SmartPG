package com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class PgController {	

	@GetMapping("pgownerdashboard") //URL Name you enter in browser
	public String pgownerdashboard()  
	{
		return "PgOwnerDashboard";   //JSP call
	}
}
