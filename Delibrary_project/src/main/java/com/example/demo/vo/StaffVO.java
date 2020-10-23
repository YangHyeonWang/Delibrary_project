package com.example.demo.vo;

public class StaffVO {
	private int staff_no;
	private String staff_email;
	private String staff_pw;
	private String staff_name;
	private String staff_phone;

	public StaffVO() {
		super();
	}
	
	public StaffVO(int staff_no, String staff_email, String staff_pw, String staff_name, String staff_phone) {
		super();
		this.staff_no = staff_no;
		this.staff_email = staff_email;
		this.staff_pw = staff_pw;
		this.staff_name = staff_name;
		this.staff_phone = staff_phone;
	}
	

	public int getStaff_no() {
		return staff_no;
	}

	public void setStaff_no(int staff_no) {
		this.staff_no = staff_no;
	}

	public String getStaff_email() {
		return staff_email;
	}

	public void setStaff_email(String staff_email) {
		this.staff_email = staff_email;
	}

	public String getStaff_pw() {
		return staff_pw;
	}

	public void setStaff_pw(String staff_pw) {
		this.staff_pw = staff_pw;
	}

	public String getStaff_name() {
		return staff_name;
	}

	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}

	public String getStaff_phone() {
		return staff_phone;
	}

	public void setStaff_phone(String staff_phone) {
		this.staff_phone = staff_phone;
	}
}
