package com.vo;

import java.util.Date;

public class Cust {
	private String cust_id;
	private int cust_pw;
	private String cust_name;
	private String cust_birthdate;
	private String cust_email;
	private int cust_phone;
	private String cust_address;
	private String cust_sex;
	private Date cust_regdate;
	
	public Cust(String cust_name, String cust_birthdate, String cust_email, int cust_phone, String cust_address,
			String cust_sex, String cust_status) {
		this.cust_name = cust_name;
		this.cust_birthdate = cust_birthdate;
		this.cust_email = cust_email;
		this.cust_phone = cust_phone;
		this.cust_address = cust_address;
		this.cust_sex = cust_sex;
	}
 
	public Cust(String cust_id, String cust_name, String cust_birthdate, String cust_email, int cust_phone,
			String cust_address, String cust_sex, Date cust_regdate) {
		this.cust_id = cust_id;
		this.cust_name = cust_name;
		this.cust_birthdate = cust_birthdate;
		this.cust_email = cust_email;
		this.cust_phone = cust_phone;
		this.cust_address = cust_address;
		this.cust_sex = cust_sex;
		this.cust_regdate = cust_regdate;
	}

	public Cust(String cust_id, int cust_pw, String cust_name, String cust_birthdate, String cust_email, int cust_phone,
			String cust_address, String cust_sex, Date cust_regdate) {
		this.cust_id = cust_id;
		this.cust_pw = cust_pw;
		this.cust_name = cust_name;
		this.cust_birthdate = cust_birthdate;
		this.cust_email = cust_email;
		this.cust_phone = cust_phone;
		this.cust_address = cust_address;
		this.cust_sex = cust_sex;
		this.cust_regdate = cust_regdate;
	}

	public String getCust_id() {
		return cust_id;
	}
	
	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}
	
	public int getCust_pw() {
		return cust_pw;
	}
	
	public void setCust_pw(int cust_pw) {
		this.cust_pw = cust_pw;
	}
	
	public String getCust_name() {
		return cust_name;
	}
	
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}
	
	public String getCust_birthdate() {
		return cust_birthdate;
	}
	
	public void setCust_birthdate(String cust_birthdate) {
		this.cust_birthdate = cust_birthdate;
	}
	
	public String getCust_email() {
		return cust_email;
	}
	
	public void setCust_email(String cust_email) {
		this.cust_email = cust_email;
	}
	
	public int getCust_phone() {
		return cust_phone;
	}
	
	public void setCust_phone(int cust_phone) {
		this.cust_phone = cust_phone;
	}
	
	public String getCust_address() {
		return cust_address;
	}
	
	public void setCust_address(String cust_address) {
		this.cust_address = cust_address;
	}
	
	public String getCust_sex() {
		return cust_sex;
	}
	
	public void setCust_sex(String cust_sex) {
		this.cust_sex = cust_sex;
	}
	
	public Date getCust_regdate() {
		return cust_regdate;
	}
	
	public void setCust_regdate(Date cust_regdate) {
		this.cust_regdate = cust_regdate;
	}

	@Override
	public String toString() {
		return "Cust [cust_id=" + cust_id + ", cust_pw=" + cust_pw + ", cust_name=" + cust_name + ", cust_birthdate="
				+ cust_birthdate + ", cust_email=" + cust_email + ", cust_phone=" + cust_phone + ", cust_address="
				+ cust_address + ", cust_sex=" + cust_sex + ", cust_regdate=" + cust_regdate + "]";
	}

	
}
