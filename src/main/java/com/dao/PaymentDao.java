package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.PaymentsBean;;


@Repository
public class PaymentDao {

	
	 @Autowired //create 1 object only
		JdbcTemplate stmt;   //to execute sql query methods
		//update-->insert update delete
		//query-->select-->read only
		public void insertinfo(PaymentsBean p) 
		{
			stmt.update("insert into Payment (cardno,nameoncard,expirydate,cvv,amount) values (?,?,?,?,?) ",p.getCardNo(),p.getNameonCard(),p.getExpiryDate(),p.getCvv(),p.getAmounts());  //? is a placeholder which is compiled only one time and replace the value of rolename every time.
		}
		
	
	
	
}
