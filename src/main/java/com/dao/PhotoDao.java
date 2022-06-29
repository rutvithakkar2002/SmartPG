package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.PhotoBean;
import com.bean.Rolebean;
import com.bean.UserBean;


@Repository
public class PhotoDao {
	@Autowired
	JdbcTemplate stmt;
	public void insertphoto(PhotoBean photo) {
		stmt.update("insert into photos (pgid,imgurl) values (?,?)",photo.getPgid(),photo.getImgurl());
	}
	
	
	public void insertimage(String path,int pgid)
	{
		
		stmt.update("insert into photos (pgid,imgurl) values(?,?)",pgid,path);
	}
	
	public void insertMainImage(String path,int pgid)
	{
		stmt.update("insert into pgmainimage (pgid,mainimgurl) values(?,?)",pgid,path);
	}
	
	public List<PhotoBean> getAllPhoto()
	{
		List<PhotoBean>pg=stmt.query("select ph.*,p.pgaddress from Photos ph ,pg p where ph.pgid=p.pgid",new BeanPropertyRowMapper<PhotoBean>(PhotoBean.class));
		return pg;
	}
	
	public void deletephoto(int photoid)
	{
		stmt.update("delete from photos where photoid=?",photoid); //It will place the roleid
	}
	public PhotoBean getphotoById(int photoid) {
		// TODO Auto-generated method stub
		PhotoBean photo = stmt.queryForObject("select *  from photos where photoid = ? ",
				new BeanPropertyRowMapper<PhotoBean>(PhotoBean.class), new Object[] { photoid });    //When we have condition statement in query that time we used Queryfor objectmethod
		return photo;
	}
	public void updatephoto(PhotoBean photo)
	{
		stmt.update("update photos set pgid=?,imgurl=? where photoid=?",photo.getPgid(),photo.getImgurl(),photo.getPhotoid());
	}
}
