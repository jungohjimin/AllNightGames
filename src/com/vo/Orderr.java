package com.vo;

import java.util.Date;

public class Orderr {
	
	private int oid;
	private String cust_id;
	private int totalprice;
	
	private Date orderdate;
	private String pstatus;
	private int count;
	
	public Orderr() {}
	
	public Orderr(String cust_id, int totalprice, String pstatus, int count) {
		this.cust_id = cust_id;
		this.totalprice = totalprice;
		this.count = count;
		this.pstatus = pstatus;
	}

	public Orderr(int oid, String cust_id, int totalprice, String pstatus, int count) {
		this.oid = oid;
		this.cust_id = cust_id;
		this.totalprice = totalprice;
		this.count = count;
		this.pstatus = pstatus;
	}

	public Orderr(int oid, String cust_id, int totalprice, Date orderdate, String pstatus, int count) {
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
		return "Orderr [oid=" + oid + ", cust_id=" + cust_id + ", totalprice=" + totalprice + ", orderdate=" + orderdate
				+ ", pstatus=" + pstatus + ", count=" + count + "]";
	}
	
	
	
	

}
