package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.AmenityBean;

@Repository
public class AmenityDao {
	@Autowired
	JdbcTemplate stmt;
	public void insertamenity(AmenityBean a) {
		// TODO Auto-generated method stub
		System.out.println("Inserted..."+a.getAmenityname());
		stmt.update("insert into amenities (amenityname) values(?)",a.getAmenityname());  
	}
	public List<AmenityBean> getAllAmenity() {
		// TODO Auto-generated method stub
		List<AmenityBean> a=stmt.query("select * from amenities",new BeanPropertyRowMapper<AmenityBean>(AmenityBean.class));
		return a;
	}
	public void deleteamenity(int amenityid) {
		// TODO Auto-generated method stub
		stmt.update("delete from amenities where amenityid=?",amenityid); //It will place the roleid
	}
	
	public AmenityBean getAmenityById(int amenityid)
	{
			System.out.println("Edit Called..");
		AmenityBean a = stmt.queryForObject("select *  from amenities where amenityid = ? ",
				new BeanPropertyRowMapper<AmenityBean>(AmenityBean.class), new Object[] {amenityid });    //When we have condition statement in query that time we used Queryfor objectmethod
		return a;
	}
	
	public void updateamenity(AmenityBean a)
	{
		stmt.update("update amenities set amenityname=? where amenityid=?",a.getAmenityname(),a.getAmenityid());
	}
}
