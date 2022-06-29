package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.PgBean;

@Repository
public class PgDao {
	@Autowired
	JdbcTemplate stmt;

	public void addpg(PgBean p) {
		// TODO Auto-generated method stub
		stmt.update(
				"insert into pg (userid,pgname,pgaddress,pglattitude,pglongitude,phno,forwhom,city,state,country,isavailable,subid,createdon) values(?,?,?,?,?,?,?,?,?,?,?,?,?)",
				p.getUserId(), p.getPgname(), p.getPgaddress(), p.getPglattitude(), p.getPglongitude(), p.getPhno(),
				p.getForwhom(), p.getCity(), p.getState(), p.getCountry(), p.isIsavailable(), p.getSubid(),
				p.getCreatedon());
	}

	public List<PgBean> getallpg() {
		List<PgBean> pg = stmt.query(
				"select p.*,u.firstname,u.lastname,s.timeduration,s.amount from pg p,users u,subscription s where p.userId=u.userId and s.subid=p.subid ",
				new BeanPropertyRowMapper<PgBean>(PgBean.class));
		return pg;
	}

	
	public List<PgBean> getallpg2() {
		List<PgBean> pg = stmt.query("select * from pg join users using (userid) join subscribedusers using(userid) join subscription on subscription.subid=subscribedusers.subid",
				new BeanPropertyRowMapper<PgBean>(PgBean.class));
		
		return pg;
	}
	
	public List<PgBean> getAllPGUserSide() {
		List<PgBean> pg = stmt.query("select * from pg",new BeanPropertyRowMapper<PgBean>(PgBean.class));
		return pg;
	}
	
	
	
	/*public List<PgBean> getrevenuebypg() {
		return stmt.query("select p.*,s.timeduration,s.amount,SUM(s.amount) as revenue from pg p join subscription s using (subid)", new BeanPropertyRowMapper<PgBean>(PgBean.class)); // When we have condition statement in query that time we used Queryfor
										// objectmethod
	}*/
	
	public int getrevenuebypg() {
		int totalrevenue= stmt.queryForObject("select SUM(amount) as revenue from pg p join subscription s using (subid)", Integer.class); // When we have condition statement in query that time we used Queryfor
		return totalrevenue;							
	}
	
	
	
	
	
	
	/*public List<PgBean> getAllUserSpecific(int userid) {
		List<PgBean> pg = stmt.query(
				"select * from pg where userid="+userid,
				new BeanPropertyRowMapper<PgBean>(PgBean.class));
		return pg;
	}*/
	
/*	public List<PgBean> getAllUserSpecific(int userid) {
		List<PgBean> pg = stmt.query(
				"select * from pg where userid=?",
				new BeanPropertyRowMapper<PgBean>(PgBean.class), new Object[] { userid });
		return pg;
	}*/
	
	
	public List<PgBean>getAllUserSpecific(int userid) {
		List<PgBean> pg = stmt.query(
				"select p.*,u.firstname,u.lastname,u.email,s.timeduration,s.amount from pg p,users u,subscription s\r\n"
				+ "where p.userId=u.userId and s.subid=p.subid and u.userid=?;",
				new BeanPropertyRowMapper<PgBean>(PgBean.class),new Object[] { userid });
		return pg;
	}
	
	
	
	public PgBean getPgById(int pgid) {
		PgBean pg = stmt.queryForObject("select *  from pg where pgid = ? ",
				new BeanPropertyRowMapper<PgBean>(PgBean.class), new Object[] { pgid }); // When we have condition
																							// statement in query that
																							// time we used Queryfor
																							// objectmethod
		return pg;
	}

	public void updatepg(PgBean pg) {
		stmt.update(
				"update pg set pgname=?,pgaddress=?,pglattitude=?,pglongitude=?,phno=?,forwhom=?,city=?,state=?,country=?,isavailable=?,subid=?,createdon=? where pgid=?",
				pg.getPgname(), pg.getPgaddress(), pg.getPglattitude(), pg.getPglongitude(), pg.getPhno(),
				pg.getForwhom(), pg.getCity(), pg.getState(), pg.getCountry(), pg.isIsavailable(), pg.getSubid(),
				pg.getCreatedon(), pg.getPgid());
	}

	public void deletepg(int pgid) {
		stmt.update("delete from pg where pgid=?", pgid);

	}
	/*
	 * public PgBean getPgByForwhomId(String forwhom) { PgBean pg =
	 * stmt.queryForObject("select *  from pg where forwhom = ? ", new
	 * BeanPropertyRowMapper<PgBean>(PgBean.class), new Object[] { forwhom });
	 * //When we have condition statement in query that time we used Queryfor
	 * objectmethod return pg; }
	 */

	public List<PgBean> getPgByForwhomId(String forwhom) {
		return stmt.query("select *  from pg where forwhom = ? ", new BeanPropertyRowMapper<PgBean>(PgBean.class),
				new Object[] { forwhom }); // When we have condition statement in query that time we used Queryfor
											// objectmethod
	}
	
	
	
	public List<PgBean> getPgByForwhomId2(String forwhom) {
		return stmt.query("select p.*,s.timeduration,s.amount from pg p join subscription s using (subid) where forwhom = ?", new BeanPropertyRowMapper<PgBean>(PgBean.class),
				new Object[] { forwhom }); // When we have condition statement in query that time we used Queryfor
											// objectmethod
	}
	
	
	
	public List<PgBean> getPgByisavailableId(boolean isavailable) {
		return stmt.query("select *  from pg where isavailable = ? ", new BeanPropertyRowMapper<PgBean>(PgBean.class),
				new Object[] {isavailable}); // When we have condition statement in query that time we used Queryfor
											// objectmethod
	}

}
