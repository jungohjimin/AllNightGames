package com.vo;

public class Orderdetail {
	private int odid;
	private int oid;
	private int gid;
	private int gcode;
	private int gprice;
	private int count;
	private int gserialnm;
	
	
	
	public Orderdetail(int gid, int gcode, int gprice, int count, int gserialnm) {
		super();
		this.gid = gid;
		this.gcode = gcode;
		this.gprice = gprice;
		this.count = count;
		this.gserialnm = gserialnm;
	}

	public Orderdetail(int oid, int gid, int gcode, int gprice, int count, int gserialnm) {
		this.oid = oid;
		this.gid = gid;
		this.gcode = gcode;
		this.gprice = gprice;
		this.count = count;
		this.gserialnm = gserialnm;
	}

	public Orderdetail(int odid, int oid, int gid, int gcode, int gprice, int count, int gserialnm) {
		this.odid = odid;
		this.oid = oid;
		this.gid = gid;
		this.gcode = gcode;
		this.gprice = gprice;
		this.count = count;
		this.gserialnm = gserialnm;
	}
	public Orderdetail() {}

	public int getOdid() {
		return odid;
	}
	
	public void setOdid(int odid) {
		this.odid = odid;
	}
	
	public int getOid() {
		return oid;
	}
	
	public void setOid(int oid) {
		this.oid = oid;
	}
	
	public int getGid() {
		return gid;
	}
	
	public void setGid(int gid) {
		this.gid = gid;
	}
	
	public int getGcode() {
		return gcode;
	}
	
	public void setGcode(int gcode) {
		this.gcode = gcode;
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
	
	public int getGserialnm() {
		return gserialnm;
	}
	
	public void setGserialnm(int gserialnm) {
		this.gserialnm = gserialnm;
	}
	
	@Override
	public String toString() {
		return "Orderdetail [odid=" + odid + ", oid=" + oid + ", gid=" + gid + ", gcode=" + gcode + ", gprice=" + gprice
				+ ", count=" + count + ", gserialnm=" + gserialnm + "]";
	}
	
	

}
