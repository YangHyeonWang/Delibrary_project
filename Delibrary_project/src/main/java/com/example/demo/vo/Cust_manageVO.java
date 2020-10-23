package com.example.demo.vo;

import java.util.Date;

public class Cust_manageVO {
	private int cm_no;
	private Date cm_regdate;
	private Date cm_quitdate;
	private int cust_no;
	private int staff_no;
	
	public Cust_manageVO() {
		super();
	}
	public Cust_manageVO(int cm_no, Date cm_regdate, Date cm_quitdate, int cust_no, int staff_no) {
		super();
		this.cm_no = cm_no;
		this.cm_regdate = cm_regdate;
		this.cm_quitdate = cm_quitdate;
		this.cust_no = cust_no;
		this.staff_no = staff_no;
	}
	public int getCm_no() {
		return cm_no;
	}
	public void setCm_no(int cm_no) {
		this.cm_no = cm_no;
	}
	public Date getCm_regdate() {
		return cm_regdate;
	}
	public void setCm_regdate(Date cm_regdate) {
		this.cm_regdate = cm_regdate;
	}
	public Date getCm_quitdate() {
		return cm_quitdate;
	}
	public void setCm_quitdate(Date cm_quitdate) {
		this.cm_quitdate = cm_quitdate;
	}
	public int getCust_no() {
		return cust_no;
	}
	public void setCust_no(int cust_no) {
		this.cust_no = cust_no;
	}
	public int getStaff_no() {
		return staff_no;
	}
	public void setStaff_no(int staff_no) {
		this.staff_no = staff_no;
	}
	

}
