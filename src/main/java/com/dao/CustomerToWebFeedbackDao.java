package com.dao;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import com.bean.FeedbackCustomertowebBean;


@Repository
public class CustomerToWebFeedbackDao {
	
	@Autowired
	JdbcTemplate stmt;
	public void insertcustomertowebfeedback(FeedbackCustomertowebBean custowebfeedback) 
	{
		System.out.println("before data inserted");
		stmt.update("insert into customertowebfeedback (name,email,msg) values (?,?,?)",custowebfeedback.getName(),custowebfeedback.getEmail(),custowebfeedback.getMsg());  //? is a placeholder which is compiled only one time and replace the value of rolename every time.
		System.out.println("after data inserted");
	}
	
	
	
}
