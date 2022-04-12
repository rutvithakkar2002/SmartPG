package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.FeedbackBean;
import com.bean.Rolebean;
import com.bean.TransactionBean;

@Repository
public class TransactionDao {
	@Autowired
	JdbcTemplate stmt;
	public void inserttransaction(TransactionBean transaction) 
	{
		stmt.update("insert into transaction (userid,rate,pgid) values(?,?,?)",transaction.getUserId(),transaction.getRate(),transaction.getPgid());  
	}
	public List<TransactionBean> getAllTransaction() {
	//	List<TransactionBean> transaction=stmt.query("select * from transaction",new BeanPropertyRowMapper<TransactionBean>(TransactionBean.class));
		
		List<TransactionBean>transaction=stmt.query("select t.*,u.firstname,u.lastname,u.email,p.pgname,p.pgaddress,p.city from transaction t,users u,pg p where u.userId=t.userId and p.pgid=t.pgid",new BeanPropertyRowMapper<TransactionBean>(TransactionBean.class));
		
		return transaction;
	}
	public void deletetransaction(int paymentid) {
		stmt.update("delete from transaction where paymentid=?",paymentid);
	}
	public TransactionBean getTransactionById(int paymentid) {

		TransactionBean transaction = stmt.queryForObject("select *  from transaction where paymentid = ? ",
				new BeanPropertyRowMapper<TransactionBean>(TransactionBean.class), new Object[] { paymentid });    //When we have condition statement in query that time we used Queryfor objectmethod
		return transaction;
	
	}
	public void updateTransaction(TransactionBean transaction) {
		// TODO Auto-generated method stub
		stmt.update("update transaction set userid=?,rate=?,pgid=? where paymentid=?",transaction.getUserId(),transaction.getRate(),transaction.getPgid(),transaction.getPaymentid());
	}
	
}
