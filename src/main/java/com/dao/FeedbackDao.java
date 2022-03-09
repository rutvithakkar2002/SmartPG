package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.FeedbackBean;
import com.bean.Rolebean;
import com.bean.UserBean;

@Repository
public class FeedbackDao {
	
	@Autowired
	JdbcTemplate stmt;
	public void insertfeedback(FeedbackBean feedback) 
	{
		stmt.update("insert into feedbackcustomertopg (userid,rating,message,pgid) values(?,?,?,?)",feedback.getUserId(),feedback.getRating(),feedback.getMessage(),feedback.getPgid());  //? is a placeholder which is compiled only one time and replace the value of rolename every time.
	}
	
	public List<FeedbackBean> getAllFeedback()
	{
		List<FeedbackBean>feedback=stmt.query("select f.*,u.firstname,u.lastName,u.email from feedbackcustomertopg f ,users u where u.userId=f.userId",new BeanPropertyRowMapper<FeedbackBean>(FeedbackBean.class));
		return feedback;
	}
	public void deletefeedback(int feedbackid)
	{
		stmt.update("delete from feedbackcustomertopg where feedbackid=?",feedbackid); //It will place the roleid
	}

	public FeedbackBean getFeedbackById(int feedbackid)
	{
		FeedbackBean feedback = stmt.queryForObject("select *  from feedbackcustomertopg where feedbackid = ? ",
				new BeanPropertyRowMapper<FeedbackBean>(FeedbackBean.class), new Object[] { feedbackid });    //When we have condition statement in query that time we used Queryfor objectmethod
		return feedback;
	}
	
	public void updateFeedback(FeedbackBean feedback)
	{
		stmt.update("update feedbackcustomertopg  set message=?,rating=? where feedbackid=?",feedback.getMessage(),feedback.getRating(),feedback.getFeedbackid());
	}
	
	
}
