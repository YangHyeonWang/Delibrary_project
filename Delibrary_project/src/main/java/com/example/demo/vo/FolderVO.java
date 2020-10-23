package com.example.demo.vo;

public class FolderVO {
	private int fol_no;
	private String fol_name;
	private int ml_no;
	private int cust_no;
	
	public FolderVO() {
		super();
	}

	public FolderVO(int fol_no, String fol_name, int ml_no, int cust_no) {
		super();
		this.fol_no = fol_no;
		this.fol_name = fol_name;
		this.ml_no = ml_no;
		this.cust_no = cust_no;
	}

	public int getFol_no() {
		return fol_no;
	}

	public void setFol_no(int fol_no) {
		this.fol_no = fol_no;
	}

	public String getFol_name() {
		return fol_name;
	}

	public void setFol_name(String fol_name) {
		this.fol_name = fol_name;
	}

	public int getMl_no() {
		return ml_no;
	}

	public void setMl_no(int ml_no) {
		this.ml_no = ml_no;
	}

	public int getCust_no() {
		return cust_no;
	}

	public void setCust_no(int cust_no) {
		this.cust_no = cust_no;
	}
}
