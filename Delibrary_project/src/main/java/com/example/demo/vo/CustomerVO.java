package com.example.demo.vo;
import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;

public class CustomerVO {
	private int cust_no;
	private String email;
	private String pw;
	private String addr;
	private String nickname;
	private String interest;
	private String name;
	private String m_phone;
	private Date birthday;
	private String fname;
	private MultipartFile uploadFile;
	
	public CustomerVO() {
		super();
	}
	
	public CustomerVO(int cust_no, String email, String pw) {
		super();
		this.cust_no = cust_no;
		this.email = email;
		this.pw = pw;
	}

	public CustomerVO(int cust_no, String email, String pw, String addr, String nickname, String interest, String name,
			String m_phone, Date birthday, String fname, MultipartFile uploadFile) {
		super();
		this.cust_no = cust_no;
		this.email = email;
		this.pw = pw;
		this.addr = addr;
		this.nickname = nickname;
		this.interest = interest;
		this.name = name;
		this.m_phone = m_phone;
		this.birthday = birthday;
		this.fname = fname;
		this.uploadFile = uploadFile;
	}
	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public int getCust_no() {
		return cust_no;
	}
	public void setCust_no(int cust_no) {
		this.cust_no = cust_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
}

