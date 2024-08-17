package com.example.sdpproject;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="tablemobile")
public class Appointment {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	
	@Column(name="puser")
	String pat;
	
	@Column(name="dname")
	String doc;
	
	@Column(name="adate")
	String date;
	
	@Column(name="dtime")
	String time;
	
	@Column(name="mobile")
	String mobile;

	public Appointment() {
	}



	public Appointment(String pat, String doc, String date, String time, String mobile) {
		this.pat = pat;
		this.doc = doc;
		this.date = date;
		this.time = time;
		this.mobile=mobile;
	}



	public String getMobile() {
		return mobile;
	}



	public void setMobile(String mobile) {
		this.mobile = mobile;
	}



	public String getPat() {
		return pat;
	}



	public void setPat(String username) {
		this.pat = username;
	}



	public String getDoc() {
		return doc;
	}



	public void setDoc(String doc) {
		this.doc = doc;
	}



	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}



	public String getTime() {
		return time;
	}



	public void setTime(String time) {
		this.time = time;
	}
	
	
	
}
