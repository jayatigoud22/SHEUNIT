package com.User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class EligibleDetails {
@Override
	public String toString() {
		return "EligibleDetails [id=" + id + ", name=" + name + ", age=" + age + ", nationality=" + nationality
				+ ", marital_status=" + marital_status + ", bank=" + bank + "]";
	}
private int id; 
private String name;
private int age;
private String nationality;
private String marital_status;
private String bank;
public EligibleDetails() {
	super();
	// TODO Auto-generated constructor stub
}
public EligibleDetails(String name,int age, String nationality, String marital_status, String bank) {
	super();
	/* this.id=id; */
	this.name = name;
	this.age = age;
	this.nationality = nationality;
	this.marital_status=marital_status;
	this.bank=bank;
}
public String getName() {
	return name;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public void setName(String name) {
	this.name = name;
}

public int getAge() {
	return age;
}

public void setAge(int age) {
	this.age = age;
}

public String getNationality() {
	return nationality;
}
public void setNationality(String nationality) {
	this.nationality=nationality;
}

public String getMaritalStatus() {
	return marital_status;
}
public void setMaritalStatus(String marital_status) {
	this.marital_status=marital_status;
}

public String getBank() {
	return bank;
}
public void setBank(String bank) {
	this.bank=bank;
}
}

