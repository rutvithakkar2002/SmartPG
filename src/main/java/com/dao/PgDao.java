package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.PgBean;
import com.bean.Rolebean;
@Repository
public class PgDao {
	@Autowired
	JdbcTemplate stmt;
	public void addpg(PgBean p) {
		// TODO Auto-generated method stub
		stmt.update("insert into pg (userid,pgaddress,pglattitude,pglongitude,phno,forwhom,city,state,country,isavailable,subid,createdon) values(?,?,?,?,?,?,?,?,?,?,?,?)",p.getUserId(),p.getPgaddress(),p.getPglattitude(),p.getPglongitude(),p.getPhno(),p.getForwhom(),p.getCity(),p.getState(),p.getCountry(),p.isIsavailable(),p.getSubid(),p.getCreatedon());
	}
	
	public List<PgBean> getallpg()
	{
		List<PgBean> pg =  stmt.query("select * from pg",new BeanPropertyRowMapper<PgBean>(PgBean.class));
		return pg;
	}
	
	public PgBean getPgById(int pgid)
	{
		PgBean pg = stmt.queryForObject("select *  from pg where pgid = ? ",
				new BeanPropertyRowMapper<PgBean>(PgBean.class), new Object[] { pgid });    //When we have condition statement in query that time we used Queryfor objectmethod
		return pg;
	}
	public void updatepg(PgBean pg)
	{
		stmt.update("update pg set pgaddress=?,pglattitude=?,pglongitude=?,phno=?,forwhom=?,city=?,state=?,country=?,isavailable=?,subid=?,createdon=? where pgid=?",pg.getPgaddress(),pg.getPglattitude(),pg.getPglongitude(),pg.getPhno(),pg.getForwhom(),pg.getCity(),pg.getState(),pg.getCountry(),pg.isIsavailable(),pg.getSubid(),pg.getCreatedon(),pg.getPgid());
	}

	public void deletepg(int pgid) {
		stmt.update("delete from pg where pgid=?",pgid);
		
	}
	
}
