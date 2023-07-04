package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.User.Post;
import com.User.UserDetails;

public class UserDAO{
  private Connection conn;

public UserDAO(Connection conn) {
	super();
	this.conn = conn;
}

public boolean addUser(UserDetails us)
{
	boolean f=false;
	try {
		String query="insert into user(name,email,password) values(?,?,?)";
		
		PreparedStatement ps= conn.prepareStatement(query);
		ps.setString(1, us.getName());
		ps.setString(2, us.getEmail());
		ps.setString(3, us.getPassword());
		int i=ps.executeUpdate();
		if(i==1)
		{
			f=true;
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return f;
}

public UserDetails loginUser(UserDetails us)
{
   UserDetails user=null;
	try {
		String query="select * from user where email=? and password=?";
		PreparedStatement ps=conn.prepareStatement(query);
		ps.setString(1, us.getEmail());
		ps.setString(2, us.getPassword()) ;
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			user=new UserDetails();
			user.setId(rs.getInt("id"));
			user.setName(rs.getString("name"));
			user.setEmail(rs.getString("email"));
			user.setPassword("password");
		}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

	return user;
}  

public boolean addUserLogin(UserDetails us)
{
	boolean f=false;
	try {
		String query="insert into login(login_email,login_pwd) values(?,?)";
		
		PreparedStatement ps= conn.prepareStatement(query);
		ps.setString(1, us.getEmail());
		ps.setString(2, us.getPassword());
		int i=ps.executeUpdate();
		if(i==1)
		{
			f=true;
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return f;
}

public List<UserDetails> viewUsers()
{
	List<UserDetails> list=new ArrayList<UserDetails>();
	UserDetails ad=null;
	try {
		String qu="Select * from user";
		PreparedStatement ps=conn.prepareStatement(qu);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			ad=new UserDetails();
			ad.setId(rs.getInt(1));
			ad.setName(rs.getString(2));
			ad.setEmail(rs.getString(3));
			ad.setPassword(rs.getString(4));
//			po.setPdate(rs.getTimestamp(2));
			list.add(ad);
			
		}
	}
	catch(Exception e)
	{
		System.out.print(e);
		}
	return list;
}

public boolean DeleteUser(int uid) {
	boolean f=false;
	try {
		String qu="delete from user where id=?";
		PreparedStatement ps=conn.prepareStatement(qu);
		ps.setInt(1,uid);
		int x=ps.executeUpdate();
		
		if(x==1)
		{
			f=true;
			
		}
		
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
	
	return f;
	
}
}
