package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.Rolebean;
import com.bean.UserBean;

@Repository
public class UserDao {
@Autowired
	JdbcTemplate stmt;
	public void adduser(UserBean user)
	{
		stmt.update("insert into users (firstname,lastname,email,password,roleid,imgurl) values (?,?,?,?,?,?)",user.getFirstName(),user.getLastName(),user.getEmail(),user.getPassword(),user.getRoleId(),user.getImgurl());
	}
	public List<UserBean> getAllUsers()
	{
		List<UserBean>users=stmt.query("select u.*,r.roleName from users u ,role r where u.roleid=r.roleid",new BeanPropertyRowMapper<UserBean>(UserBean.class));
		return users;
	}
	public UserBean getUserByEmail(String email) {
		UserBean dbUser = null;

		try {
			dbUser = stmt.queryForObject("select * from users where email = ? ",
					new BeanPropertyRowMapper<UserBean>(UserBean.class), new Object[] { email });
		} catch (Exception e) {

		}
		return dbUser;
	}
	
	public void deleteuser(int userId) {
		// TODO Auto-generated method stub
		stmt.update("delete from users where userid=?",userId);
	}
	
	public UserBean getUserById(int userId)
	{
		UserBean user = stmt.queryForObject("select *  from users where userid = ? ",
				new BeanPropertyRowMapper<UserBean>(UserBean.class), new Object[] { userId });    //When we have condition statement in query that time we used Queryfor objectmethod
		return user;
	}
	public void updateuser(UserBean user) {
		// TODO Auto-generated method stub
		stmt.update("update users set firstname=?,lastname=?,imgurl=? where userid=?",user.getFirstName(),user.getLastName(),user.getImgurl(),user.getUserId());
	}
	public void updatePassword(UserBean user) {
		// TODO Auto-generated method stub
		stmt.update("update users set password = ? where email = ?",user.getPassword(),user.getEmail());
	}
	
}
