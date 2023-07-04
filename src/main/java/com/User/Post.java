  package com.User;

import java.io.InputStream;
import java.sql.*;
import java.time.LocalDateTime;

public class Post {
private int id;
private String title;
private String content;
private UserDetails user;
private String category;
private String contact;
private String photoName;
public Post(int id, String title, String content, Date pdate, UserDetails user,  String category, String contact ,String photoName) {
	super();
	this.title = title;
	this.content = content;
	this.user = user;
	this.category=category;
	this.contact=contact;
	this.photoName= photoName;
}
public Post() {
	super();
	// TODO Auto-generated constructor stub
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}

/*
 * public Date getPdate() { return pdate; } public void setPdate(Date date) {
 * this.pdate = pdate; }
 */
public UserDetails getUser() {
	return user;
}
public void setUser(UserDetails user) {
	this.user = user;
}



public String getPhotoName() {
	return photoName;
}
public void setPhotoName(String photoName) {
	this.photoName=photoName;
}


public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category=category;
}

public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact=contact;
}
}