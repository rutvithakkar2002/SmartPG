package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.Rolebean;
import com.bean.TransactionBean;
import com.bean.TransactionDetailsBean;
@Repository
public class TransactionDetailDao {
	@Autowired
	JdbcTemplate stmt;
	public void inserttransactiondetail(TransactionDetailsBean transaction) {
		// TODO Auto-generated method stub
		stmt.update("insert into transactiondetails (userid,paymentid,transactionfor,amountpaid,modeofpayment,dateandtime,paymentgatewayused) values(?,?,?,?,?,?,?)",transaction.getUserId(),transaction.getPaymentid(),transaction.getTransactionfor(),transaction.getAmountpaid(),transaction.getModeofpayment(),transaction.getDateandtime(),transaction.getPaymentgatewayused());
	}
	public List<TransactionDetailsBean> getalltransactiondetail() {
		// TODO Auto-generated method stub
	//	List<TransactionDetailsBean> transaction=stmt.query("select * from transactiondetails",new BeanPropertyRowMapper<TransactionDetailsBean>(TransactionDetailsBean.class));
		
		List<TransactionDetailsBean> transaction=stmt.query("select td.*,u.firstname,u.lastname,u.email from transactiondetails td,users u where u.userId=td.userId",new BeanPropertyRowMapper<TransactionDetailsBean>(TransactionDetailsBean.class));
		return transaction;
	}
	public void deletetransactiondetail(int transactionid) {
		// TODO Auto-generated method stub
		stmt.update("delete from transactiondetails where transactionid=?",transactionid);
	}
	public TransactionDetailsBean getTransactionById(int transactionid) {

		TransactionDetailsBean transactiondetail = stmt.queryForObject("select *  from transactiondetails where transactionid = ? ",
				new BeanPropertyRowMapper<TransactionDetailsBean>(TransactionDetailsBean.class), new Object[] { transactionid});    //When we have condition statement in query that time we used Queryfor objectmethod
		return transactiondetail;
	}
	public void updatetransactiondetail(TransactionDetailsBean transactiondetail) {
		stmt.update("update transactiondetails set transactionfor=?,amountpaid=?,modeofpayment=?,paymentgatewayused=? where transactionid=?",transactiondetail.getTransactionfor(),transactiondetail.getAmountpaid(),transactiondetail.getModeofpayment(),transactiondetail.getPaymentgatewayused(),transactiondetail.getTransactionid());
	}

}
