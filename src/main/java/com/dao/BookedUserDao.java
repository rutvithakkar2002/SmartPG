package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.BookedPgCustomerDetailsBean;
@Repository

public class BookedUserDao {
	@Autowired
	JdbcTemplate stmt;
	public void insertbookeduser(BookedPgCustomerDetailsBean book) 
	{
		stmt.update("insert into bookedpgdetails (userid,pgid,requestaccept,datetimeofbooking) values(?,?,?,?)",book.getUserId(),book.getPgid(),book.isRequestaccept(),book.getDatetimeofbooking());  //? is a placeholder which is compiled only one time and replace the value of rolename every time.
	}
	public List<BookedPgCustomerDetailsBean> getallsubscribeuser() {
		// TODO Auto-generated method stub
		List<BookedPgCustomerDetailsBean> sub=stmt.query("select b.*,u.firstname,u.lastname,u.email,p.pgname,p.pgaddress,p.city  from bookedpgdetails b,users u,pg p where b.userId=u.userId and b.pgid=p.pgid",new BeanPropertyRowMapper<BookedPgCustomerDetailsBean>(BookedPgCustomerDetailsBean.class));
		
		
	//	List<BookedPgCustomerDetailsBean> sub=stmt.query("select * from bookedpgdetails",new BeanPropertyRowMapper<BookedPgCustomerDetailsBean>(BookedPgCustomerDetailsBean.class));
		return sub;
	}
	public void deletebookeduser(int bookedid) {
		// TODO Auto-generated method stub
		stmt.update("delete from bookedpgdetails where bookedid=?",bookedid);
	}
	
	public BookedPgCustomerDetailsBean getBookedUserById(int bookedid)
	{
		BookedPgCustomerDetailsBean book = stmt.queryForObject("select *  from bookedpgdetails where bookedid = ? ",
				new BeanPropertyRowMapper<BookedPgCustomerDetailsBean>(BookedPgCustomerDetailsBean.class), new Object[] { bookedid });    //When we have condition statement in query that time we used Queryfor objectmethod
		return book;
	}
	
	public void updateBookedUser(BookedPgCustomerDetailsBean book)
	{
		stmt.update("update bookedpgdetails set pgid=?,requestaccept=? where bookedid=?",book.getPgid(),book.isRequestaccept(),book.getBookedid());
	}
	
}
