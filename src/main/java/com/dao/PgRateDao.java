package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.PgBean;
import com.bean.PgRateBean;
import com.bean.Rolebean;

@Repository
public class PgRateDao {
	@Autowired
	JdbcTemplate stmt;
	public void addpgrate(PgRateBean p) {
		// TODO Auto-generated method stub
		stmt.update("insert into pgrate (pgid,onesharing,twosharing,threesharing,foursharing) values(?,?,?,?,?)",p.getPgid(),p.getOnesharing(),p.getTwosharing(),p.getThreesharing(),p.getFoursharing());
	}

	public List<PgRateBean> getallpgrate()
	{
		//List<PgRateBean> pg =  stmt.query("select * from pgrate",new BeanPropertyRowMapper<PgRateBean>(PgRateBean.class));
		
		List<PgRateBean> pg =  stmt.query("select pr.*,p.pgname,p.pgaddress,p.city,p.state from pgrate pr,pg p where p.pgid=pr.pgid",new BeanPropertyRowMapper<PgRateBean>(PgRateBean.class));
		
		return pg;
	}
	
	
	public List<PgRateBean> getallpgrate2()
	{
		//List<PgRateBean> rate =  stmt.query("select p.*,r.*,ph.* from pg p,pgrate r,photos ph where p.pgid=r.pgid and p.pgid=ph.pgid and r.pgid=ph.pgid",new BeanPropertyRowMapper<PgRateBean>(PgRateBean.class));
		
		List<PgRateBean> rate =  stmt.query("select p.*,r.*,pmi.* from pg p,pgrate r,pgmainimage pmi where p.pgid=r.pgid and p.pgid=pmi.pgid and r.pgid=pmi.pgid",new BeanPropertyRowMapper<PgRateBean>(PgRateBean.class));
		
		//List<PgRateBean> pg =  stmt.query("select pr.*,p.pgname,p.pgaddress,p.city,p.state from pgrate pr,pg p where p.pgid=pr.pgid",new BeanPropertyRowMapper<PgRateBean>(PgRateBean.class));
		
		return rate;
	}
	
	
	
	
	
	
	
	
	
	public void deletepgrate(int pgrateid)
	{
		stmt.update("delete from pgrate where pgrateid=?",pgrateid); //It will place the roleid
	}
	public PgRateBean getPgrateById(int pgrateid)
	{
		PgRateBean pgrate = stmt.queryForObject("select *  from pgrate where pgrateid = ? ",
				new BeanPropertyRowMapper<PgRateBean>(PgRateBean.class), new Object[] { pgrateid });    //When we have condition statement in query that time we used Queryfor objectmethod
		return pgrate;
	}
	
	public void updatepgrate(PgRateBean rate)
	{
		stmt.update("update pgrate set onesharing=?,twosharing=?,threesharing=?,foursharing=? where pgrateid=?",rate.getOnesharing(),rate.getTwosharing(),rate.getThreesharing(),rate.getFoursharing(),rate.getPgrateid());
	}
	
}
