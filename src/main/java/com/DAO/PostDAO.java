package com.DAO;
import java.lang.annotation.*;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.*;
import java.sql.Date;
import java.util.*;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.User.Post;


public class PostDAO {
private  Connection conn;

public PostDAO(Connection conn) {
	super();
	this.conn = conn;
}

/* public boolean AddBusiness(int ui,String ti,String co, InputStream file) */
public boolean AddBusiness(int ui,String ti,String co, String cat, String cont,String fileName)
{
	boolean f=false;
	try {
		String qu="insert into post(title,content,category,contact,photoName,uid) values(?,?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(qu);
		 ps.setInt(6,ui);
	     ps.setString(1,ti);
	     ps.setString(2,co);
	     ps.setString(4, cat);
	     ps.setString(3, cont);
         ps.setString(5,fileName);
			/* ps.setDate(6,java.sql.Date.valueOf(da)); */
			/*
			 * if (file != null) { ps.setBlob(4, file); }
			 */
	     
	
	   int i=ps.executeUpdate();
	   if(i==1)
	   {
		   f=true;
	   } 
	}
	catch(Exception e){
		
	}
	
	return f;
}

public List<Post> getData(int id)
{
	List<Post> list=new ArrayList<Post>();
	Post po=null;
	try {
		String qu="Select * from post where uid=? order by id DESC";
		PreparedStatement ps=conn.prepareStatement(qu);
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			po=new Post();
			po.setId(rs.getInt(1));
			po.setTitle(rs.getString(2));
			po.setContent(rs.getString(3));
			po.setCategory(rs.getString(4));
			po.setContact(rs.getString(5));
			po.setPhotoName(rs.getString(6));
			list.add(po);
		
		}
	}
	catch(Exception e)
	{
		System.out.print(e);
		}
	return list;
}


public Post getDataById(int jobId)
{
	Post p=null;
	try {
	String qu="select * from post where id=?";
	PreparedStatement ps=conn.prepareStatement(qu);
	ps.setInt(1,jobId);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
	{
		p=new Post();
		p.setId(rs.getInt(1));
		p.setTitle(rs.getString(2));
		p.setContent(rs.getString(3));
		p.setCategory(rs.getString(4));
		p.setContact(rs.getString(5));
		p.setPhotoName(rs.getString(6));
		
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return p;
}

public boolean PostUpdate(int jid, String ti, String co)
{
	boolean f=false;
	
	try {
		String qu="update post set title=?,content=? where id=?";
		PreparedStatement ps=conn.prepareStatement(qu);
		
		ps.setString(1,ti);
		ps.setString(2,co);
		ps.setInt(3, jid);	
		
		int i=ps.executeUpdate();
		
		if(i==1) {
			f=true;
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return f;
}

public boolean DeletePost(int jid) {
	boolean f=false;
	try {
		String qu="delete from post where id=?";
		PreparedStatement ps=conn.prepareStatement(qu);
		ps.setInt(1,jid);
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

public List<Post> allPostData()
{
	List<Post> list=new ArrayList<Post>();
	Post allpo=null;
	try {
		String qu="Select * from post order by id DESC";
		PreparedStatement ps=conn.prepareStatement(qu);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			allpo=new Post();
			allpo.setId(rs.getInt(1));
			allpo.setTitle(rs.getString(2));
			allpo.setContent(rs.getString(3));
			allpo.setCategory(rs.getString(4));
			allpo.setContact(rs.getString(5));
			allpo.setPhotoName(rs.getString(6));
			/* allpo.setPdate(rs.getDate(6)); */
			list.add(allpo);
			
		}
	}
	catch(Exception e)
	{
		System.out.print(e);
		}
	return list;
}

public List<Post> adminPostData()
{
	List<Post> list=new ArrayList<Post>();
	Post ad=null;
	try {
		String qu="Select * from post order by id DESC";
		PreparedStatement ps=conn.prepareStatement(qu);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			ad=new Post();
			ad.setId(rs.getInt(1));
			ad.setTitle(rs.getString(2));
			ad.setContent(rs.getString(3));
//			po.setPdate(rs.getTimestamp(2));
			ad.setContact(rs.getString(4));
			ad.setPhotoName(rs.getString(6));
			list.add(ad);
			
		}
	}
	catch(Exception e)
	{
		System.out.print(e);
		}
	return list;
}

public Post adminDataById(int jobId)
{
	Post p=null;
	try {
	String qu="select * from post where id=?";
	PreparedStatement ps=conn.prepareStatement(qu);
	ps.setInt(1,jobId);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
	{
		p=new Post();
		p.setId(rs.getInt(1));
		p.setTitle(rs.getString(2));
		p.setContent(rs.getString(3));
		p.setPhotoName(rs.getString(4));
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return p;
}

public boolean adminUpdate(int jid, String ti, String co)
{
	boolean f=false;
	
	try {
		String qu="update post set title=?,content=? where id=?";
		PreparedStatement ps=conn.prepareStatement(qu);
		
		ps.setString(1,ti);
		ps.setString(2,co);
		ps.setInt(3, jid);	
		
		int i=ps.executeUpdate();
		
		if(i==1) {
			f=true;
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return f;
}

public boolean adminDeletePost(int jid) {
	boolean f=false;
	try {
		String qu="delete from post where id=?";
		PreparedStatement ps=conn.prepareStatement(qu);
		ps.setInt(1,jid);
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


public Post singlePostDataById(int postid)
{
	Post p=null;
	try {
	String qu="select * from post where id=?";
	PreparedStatement ps=conn.prepareStatement(qu);
	ps.setInt(1,postid);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
	{
		p=new Post();
		p.setId(rs.getInt(1));
		p.setTitle(rs.getString(2));
		p.setContent(rs.getString(3));
		/* p.setPhoto(rs.getBlob(4)); */
		p.setCategory(rs.getString(4));
		p.setPhotoName(rs.getString(5));
		/* p.setPdate(rs.getDate(6)); */
		
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return p;
}

public boolean ReadMore(int postid, String title, String content, String category, String photoName) {
boolean f=false;
	
	try {
		String qu="select * from post where id=?";
		PreparedStatement ps=conn.prepareStatement(qu);
		
		 ps.setInt(1, postid);
		 ps.setString(2,title);
		 ps.setString(3,content);
		 ps.setString(4,category);
		 ps.setString(5,photoName);
		 

		int i=ps.executeUpdate();
		
		if(i==1) {
			f=true;
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return f;
	
}
}
