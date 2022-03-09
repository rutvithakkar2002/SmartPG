package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.PgAmenityBean;
@Repository
public class PgamenitiesDao {
	
	@Autowired
	JdbcTemplate stmt;
	public void insertpgamenity(PgAmenityBean p) {
		// TODO Auto-generated method stub
		stmt.update("insert into pgamenity (pgid,amenityid) values(?,?)",p.getPgid(),p.getAmenityid());  
	}
}
