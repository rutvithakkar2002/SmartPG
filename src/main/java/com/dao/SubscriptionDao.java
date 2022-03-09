package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.Rolebean;
import com.bean.SubscriptionBean;
@Repository
public class SubscriptionDao {
	@Autowired //create 1 object only
	JdbcTemplate stmt;   //to execute sql query methods
	//update-->insert update delete
	//query-->select-->read only
	public void insertplan(SubscriptionBean subscription) 
	{
		stmt.update("insert into subscription (timeduration,amount) values(?,?)",subscription.getTimeduration(),subscription.getAmount());  //? is a placeholder which is compiled only one time and replace the value of rolename every time.
		//stmt.update("insert into subscription (amount) values(?)",(s.getAmount()));
	}
	
	public List<SubscriptionBean> getAllplans()
	{
		List<SubscriptionBean> plans=stmt.query("select * from subscription",new BeanPropertyRowMapper<SubscriptionBean>(SubscriptionBean.class));
		return plans;
	}
	
	public void deletesub(int subid)
	{
		stmt.update("delete from subscription where subid=?",subid); //It will place the subid
	}
	
	public SubscriptionBean getplanById(int subid)
	{
		SubscriptionBean sub = stmt.queryForObject("select *  from subscription where subid = ? ",
				new BeanPropertyRowMapper<SubscriptionBean>(SubscriptionBean.class), new Object[] {subid});    //When we have condition statement in query that time we used Queryfor objectmethod
		return sub;
	}
	
	public void updateplan(SubscriptionBean sub)
	{
		stmt.update("update subscription set timeduration=?, amount=? where subid=?",sub.getTimeduration(),sub.getAmount(),sub.getSubid());
	}
	
	
	
}
