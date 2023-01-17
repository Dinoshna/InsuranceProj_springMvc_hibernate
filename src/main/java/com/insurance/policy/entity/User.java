package com.insurance.policy.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="register_Table")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int Id;

	@Column(name="FirstName")
	private String FirstName;

	@Column(name="LastName")
	private String LastName;

	@Column(name="UserName")
	private  String UserName;

	@Column(name="Password")
	private  String Password;

	@Column(name="Address")
	private String Address;

	@Column(name="Contact")
	private String Contact;

	@Column(name="LoginType")
	private String LoginType;

	public User() {

	}



	public User(String userName, String password) {
		super();
		UserName = userName;
		Password = password;
	}



	public String getLoginType() {
		return LoginType;
	}


	public String setLoginType(String loginType) {
		return LoginType = loginType;
	}


	public int getId() {
		return Id;
	}


	public void setId(int id) {
		Id = id;
	}


	public String getFirstName() {
		return FirstName;
	}


	public void setFirstName(String firstName) {
		FirstName = firstName;
	}


	public String getLastName() {
		return LastName;
	}


	public void setLastName(String lastName) {
		LastName = lastName;
	}


	public  String getUserName() {
		return UserName;
	}

	public String setUserName(String userName) {
		return UserName = userName;
	}
	public  String getPassword() {
		return Password;
	}
	public String setPassword(String password) {
		return Password = password;
	}


	public String getAddress() {
		return Address;
	}


	public void setAddress(String address) {
		Address = address;
	}


	public String getContact() {
		return Contact;
	}


	public String setContact(String contact) {
		return Contact = contact;
	}



	@Override 
	public String toString() 
	{ 
		return "User [Id=" + Id + ", FirstName="
				+ FirstName + ", LastName=" + LastName + ", UserName=" + UserName +
				", Password=" + Password + ", Address=" + Address + ", Contact=" + Contact +
				", LoginType=" + LoginType + "]"; 
	}





}
