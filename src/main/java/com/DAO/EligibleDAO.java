package com.DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.User.EligibleDetails;
import com.User.Post;
import com.User.SchemeDetails;
import com.User.EligibleDetails;

public class EligibleDAO {
	private Connection conn;

	public EligibleDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addEligibleUser(EligibleDetails es) {
		boolean f = false;
		try {
			String query = "insert into eligible(name,age,nationality,marital_status,bank) values(?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(query);

			ps.setString(1, es.getName());
			ps.setInt(2, es.getAge());
			ps.setString(3, es.getNationality());
			ps.setString(4, es.getMaritalStatus());
			ps.setString(5, es.getBank());
			/* ps.setInt(6, es.getId()); */
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	
	/*
	 * public boolean eligibleSchemes(EligibleDetails es) { boolean f = false;
	 * EligibleDetails e1= new EligibleDetails(); try { String query =
	 * "select * from schemes";
	 * 
	 * PreparedStatement ps=conn.prepareStatement(query);
	 * 
	 * ResultSet rs=ps.executeQuery(); while(rs.next()) {
	 * e1.setName(rs.getString(1)); e1.setAge(rs.getInt(2));
	 * e1.setNationality(rs.getString(1)); e1.setMaritalStatus(rs.getString(1));
	 * e1.setBank(rs.getString(1)); } } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return f; }
	 */

	

}
