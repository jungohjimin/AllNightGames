package com.vo;

import java.util.Date;

public class Cart {
	private int gid;
	private String cust_id;
	private String gimgname;
	private String gname;
	private int gprice;
	private int count;
	private Date orderdate;

	public Cart() {}

	public Cart(int gid, String cust_id, String gimgname, String gname, int gprice, int count) {
		this.gid = gid;
		this.cust_id = cust_id;
		this.gimgname = gimgname;
		this.gname = gname;
		this.gprice = gprice;
		this.count = count;
	}

	public Cart(int gid, String cust_id, String gimgname, String gname, int gprice, int count, Date orderdate) {
		this.gid = gid;
		this.cust_id = cust_id;
		this.gimgname = gimgname;
		this.gname = gname;
		this.gprice = gprice;
		this.count = count;
		this.orderdate = orderdate;
	}

	public int getGid() {
		return gid;
	}
	
	public void setGid(int gid) {
		this.gid = gid;
	}
	
	public String getCust_id() {
		return cust_id;
	}
	
	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}
	
	public String getGimgname() {
		return gimgname;
	}
	
	public void setGimgname(String gimgname) {
		this.gimgname = gimgname;
	}
	
	public String getGname() {
		return gname;
	}
	
	public void setGname(String gname) {
		this.gname = gname;
	}
	
	public int getGprice() {
		return gprice;
	}
	
	public void setGprice(int gprice) {
		this.gprice = gprice;
	}
	
	public int getCount() {
		return count;
	}
	
	public void setCount(int count) {
		this.count = count;
	}
	
	public Date getOrderdate() {
		return orderdate;
	}
	
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	@Override
	public String toString() {
		return "Cart [gid=" + gid + ", cust_id=" + cust_id + ", gimgname=" + gimgname + ", gname=" + gname + ", gprice="
				+ gprice + ", count=" + count + ", orderdate=" + orderdate + "]";
	}
	
}
