package com.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import com.bean.SubscribedUserBean;


@Repository
public class SubscribedUsersDao {
	@Autowired
	JdbcTemplate stmt;
	public void insertsubscribedusers(SubscribedUserBean sub) {
		stmt.update("insert into subscribedusers (userid,subid,startdateofsub,enddateofsub) values(?,?,?,?)",sub.getUserId(),sub.getSubid(),sub.getStartdateofsub(),sub.getEnddateofsub());
		
	}

	public List<SubscribedUserBean> getAllSubscribedUsers() {
	//	List<SubscribedUserBean> sub=stmt.query("select * from subscribedusers",new BeanPropertyRowMapper<SubscribedUserBean>(SubscribedUserBean.class));
		List<SubscribedUserBean> sub=stmt.query("select s.*,u.firstname,u.lastname,u.email from subscribedusers s,users u where u.userid=s.userid and to_date(enddateofsub,'DD/MM/YYYY') > current_date",new BeanPropertyRowMapper<SubscribedUserBean>(SubscribedUserBean.class));
		
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
	
	
	/*public List<SubscribedUserBean> getUserBysubId(int subid)
	{
		return stmt.query("select s.*,u.firstname,u.lastname,u.email,sub.offername from subscribedusers s,users u,subscription sub where s.subid = sub.subid and u.userid=s.userid and s.subid = ? ",
				new BeanPropertyRowMapper<SubscribedUserBean>(SubscribedUserBean.class),new Object[] {subid});
	}*/
	
/*	public List<SubscribedUserBean> getUserBysubId(int subid)
	{
		return stmt.query("select s.* ,u.firstname,u.lastname,u.email from subscribedusers s,pg p,users u,subscription sub where s.subid = sub.subid and u.userid=s.userid and s.subid = ? ",
				new BeanPropertyRowMapper<SubscribedUserBean>(SubscribedUserBean.class),new Object[] {subid});
	}*/
	
	
	
	public List<SubscribedUserBean> getUserBysubId(int subid)
	{
		return stmt.query("select sb.*, u.firstname,u.lastname,u.email from subscribedusers sb,users u where  u.userid = sb.userid and sb.subid = ?",
				new BeanPropertyRowMapper<SubscribedUserBean>(SubscribedUserBean.class),new Object[] {subid});
	}
	
	
	public List<SubscribedUserBean> getUserByoffername()
	{
		return stmt.query("select s.*,u.firstname,u.lastname,u.email from subscribedusers s,users u where u.userid=s.userid and subid=20 and to_date(s.enddateofsub,'DD/MM/YYYY') >current_date",
				new BeanPropertyRowMapper<SubscribedUserBean>(SubscribedUserBean.class));
	}
	

	public List<SubscribedUserBean> getUserByoffername2()
	{
		return stmt.query("select s.*,u.firstname,u.lastname,u.email from subscribedusers s,users u where u.userid=s.userid and subid=21 and to_date(s.enddateofsub,'DD/MM/YYYY') >current_date",
				new BeanPropertyRowMapper<SubscribedUserBean>(SubscribedUserBean.class));
	}
	
	public List<SubscribedUserBean> getUserByoffername3()
	{
		return stmt.query("select s.*,u.firstname,u.lastname,u.email from subscribedusers s,users u where u.userid=s.userid and subid=22 and to_date(s.enddateofsub,'DD/MM/YYYY') >current_date",
				new BeanPropertyRowMapper<SubscribedUserBean>(SubscribedUserBean.class));
	}
	
	
}
