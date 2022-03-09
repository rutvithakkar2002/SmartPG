package com.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.Rolebean;
import com.bean.SubscribedUserBean;

@Repository
public class SubscribedUsersDao {
	@Autowired
	JdbcTemplate stmt;
	public void insertsubscribedusers(SubscribedUserBean sub) {
		stmt.update("insert into subscribedusers (userid,subid,startdateofsub,enddateofsub) values(?,?,?,?)",sub.getUserId(),sub.getSubid(),sub.getStartdateofsub(),sub.getEnddateofsub());
		
	}

	public List<SubscribedUserBean> getAllSubscribedUsers() {
		List<SubscribedUserBean> sub=stmt.query("select * from subscribedusers",new BeanPropertyRowMapper<SubscribedUserBean>(SubscribedUserBean.class));
		return sub;
	}
	public void deletesubscribeduser(int subscribeid)
	{
		stmt.update("delete from subscribedusers where  subscribeid=?",subscribeid); //It will place the roleid
	}
	public SubscribedUserBean getSubscribeid(int subscribeid)
	{
		SubscribedUserBean sub = stmt.queryForObject("select *  from subscribedusers where subscribeid = ? ",
				new BeanPropertyRowMapper<SubscribedUserBean>(SubscribedUserBean.class), new Object[] {subscribeid });    //When we have condition statement in query that time we used Queryfor objectmethod
		return sub;
	}
	
	public void updatesubscribeduser(SubscribedUserBean sub)
	{
		stmt.update("update subscribedusers set subid=? where subscribeid=?",sub.getSubid(),sub.getSubscribeid());
	}
	
}
