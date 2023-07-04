package com.DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.User.EligibleDetails;
import com.User.SchemeDetails;

public class SchemeDAO{
	  private Connection conn;

	public SchemeDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addSchemes(SchemeDetails es)
	{
		boolean f=false;
		try {
			String query="insert into schemes(scheme_name,scheme_details,scheme_age,max_age,scheme_nationality,scheme_bank,ms) values(?,?,?,?,?,?,?)";
			
			PreparedStatement ps= conn.prepareStatement(query);
			 
			ps.setString(1, es.getName());
			ps.setString(2, es.getDetails());
			ps.setInt(3, es.getAge());
			ps.setInt(4, es.getMaxAge());
			ps.setString(5, es.getNationality());
			ps.setString(6, es.getBank());
			ps.setString(7, es.getMaritalStatus());
		
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
}