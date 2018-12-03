package com.vo;

import java.util.Date;

public class Order {
	
	private int oid;
	private String cust_id;
	private int totalprice;
	private int count;
	private Date orderdate;
	private String pstatus;
	 
	public Order(String cust_id, int totalprice, int count, String pstatus) {
		this.cust_id = cust_id;
		this.totalprice = totalprice;
		this.count = count;
		this.pstatus = pstatus;
	}

	public Order(int oid, String cust_id, int totalprice, int count, String pstatus) {
		this.oid = oid;
		this.cust_id = cust_id;
		this.totalprice = totalprice;
		this.count = count;
		this.pstatus = pstatus;
	}

	public Order(int oid, String cust_id, int totalprice, int count, Date orderdate, String pstatus) {
		this.oid = oid;
		this.cust_id = cust_id;
		this.totalprice = totalprice;
		this.count = count;
		this.orderdate = orderdate;
		this.pstatus = pstatus;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public String getCust_id() {
		return cust_id;
	}
	
	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}
	
	public int getTotalprice() {
		return totalprice;
	}
	
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
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
	
	public String getPstatus() {
		return pstatus;
	}
	
	public void setPstatus(String pstatus) {
		this.pstatus = pstatus;
	}
	
	@Override
	public String toString() {
		return "Order [cust_id=" + cust_id + ", totalprice=" + totalprice + ", count=" + count + ", orderdate="
				+ orderdate + ", pstatus=" + pstatus + "]";
	}
	
	

}
