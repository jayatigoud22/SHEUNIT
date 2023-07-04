package com.User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SchemeDetails {
private String scheme_name;
private String scheme_details;
private int scheme_age;
private String scheme_nationality;
private String scheme_ms;
private String scheme_bank;
private String ms;
private int max_age;
public SchemeDetails() {
	super();
	// TODO Auto-generated constructor stub
}
public SchemeDetails(String scheme_name,String scheme_details,int scheme_age, int max_age,String scheme_nationality, String scheme_ms, String scheme_bank, String ms) {
	super();
	/* this.id=id; */
	this.scheme_name = scheme_name;
	this.scheme_details=scheme_details;
	this.scheme_age = scheme_age;
	this.max_age = max_age;
	this.scheme_nationality = scheme_nationality;
	this.scheme_ms=scheme_ms;
	this.scheme_bank=scheme_bank;
	this.ms=ms;
}
public String getName() {
	return scheme_name;
}

public void setName(String scheme_name) {
	this.scheme_name = scheme_name;
}

public String getDetails() {
	return scheme_details;
}

public void setDetails(String scheme_details) {
	this.scheme_details = scheme_details;
}

public int getAge() {
	return scheme_age;
}

public void setAge(int scheme_age) {
	this.scheme_age = scheme_age;
}

public int getMaxAge() {
	return max_age;
}

public void setMaxAge(int max_age) {
	this.max_age = max_age;
}
public String getNationality() {
	return scheme_nationality;
}
public void setNationality(String scheme_nationality) {
	this.scheme_nationality=scheme_nationality;
}

/*
 * public String getMaritalStatus() { return scheme_ms; } public void
 * setMaritalStatus(String scheme_ms) { this.scheme_ms = scheme_ms; }
 */

public String getMaritalStatus() {
	return ms;
}
public void setMaritalStatus(String ms) {
	this.ms = ms;
}
public String getBank() {
	return scheme_bank;
}
public void setBank(String scheme_bank) {
	this.scheme_bank=scheme_bank;
}

}

