package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.PaymentsBean;
import com.dao.PaymentDao;
import com.service.PaymentService;
@Controller
public class PaymentController {

	@Autowired
	PaymentService paymentService;
	
	@Autowired
	PaymentDao paymentdao;

	@GetMapping("paymentform")
	public String paymentform()
	{
		return "Paymentform";
	}
	//authorize.net	
	@PostMapping("charge")
	public String charge(PaymentsBean paymentBean) {
		System.out.println("hiii");
	
		PaymentsBean pay = paymentService.run(paymentBean);
		System.out.println(pay.getPaymentStatus());
		System.out.println(pay.getPaymentStatusCode());
		
		if(pay.equals("Success"))
		{
			paymentdao.insertinfo(paymentBean);
		}
		else
		{
			return "error";
		}
		//if pay.status success insert 
		//else error.jsp 
		
		return "";
	}
	
}
