package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.PgBean;
import com.bean.PgRateBean;


@Repository
public class DropdownDao {

	@Autowired
	JdbcTemplate stmt;
	/*public List<PgRateBean> getinfo(String country,String state,String city)
	{
		return stmt.query("select p.*,r.*,pmi.* from pg p,pgrate r,pgmainimage pmi where p.pgid=r.pgid and p.pgid=pmi.pgid and r.pgid=pmi.pgid and country=? and state=? and city=? ",
				new BeanPropertyRowMapper<PgRateBean>(PgRateBean.class),new Object[] {country,state,city});
		
	}*/
	
	public List<PgRateBean> getinfo(String country,String state,String city)
	{
		return stmt.query("select * from pg join pgmainimage using (pgid) join pgrate using (pgid) where country=? and state=? and city=?",new BeanPropertyRowMapper<PgRateBean>(PgRateBean.class),new Object[] {country,state,city});

	}
	
}
