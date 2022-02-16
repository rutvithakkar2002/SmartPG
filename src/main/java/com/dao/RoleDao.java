package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.Rolebean;

@Repository
public class RoleDao {
	
	@Autowired //create 1 object only
		JdbcTemplate stmt;   //to execute sql query methods
		//update-->insert update delete
		//query-->select-->read only
		public void insertrole(Rolebean role) 
		{
			stmt.update("insert into role (rolename) values(?)",role.getRoleName());  //? is a placeholder which is compiled only one time and replace the value of rolename every time.
		}
		
		public List<Rolebean> getAllRoles()
		{
			List<Rolebean> roles=stmt.query("select * from role",new BeanPropertyRowMapper<Rolebean>(Rolebean.class));
			return roles;
		}
}
