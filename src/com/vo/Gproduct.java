package com.vo;

import org.springframework.web.multipart.MultipartFile;

public class Gproduct {
	private int gid;
	private String gname;
	private int gcode;
	private int gprice;
	private String gimgname;
	private String gcodenm;
	private MultipartFile mf;
	
	public Gproduct() {};
	
	public Gproduct(String gname, int gcode, int gprice, String gimgname, String gcodenm) {
		this.gname = gname;
		this.gcode = gcode;
		this.gprice = gprice;
		this.gimgname = gimgname;
		this.gcodenm = gcodenm;
	}
	
	public Gproduct(int gid, String gname, int gcode, int gprice, String gimgname, String gcodenm) {
		this.gid = gid;
		this.gname = gname;
		this.gcode = gcode;
		this.gprice = gprice;
		this.gimgname = gimgname;
		this.gcodenm = gcodenm;
	}

	public MultipartFile getMf() {
		return mf;
	}

	public void setMf(MultipartFile mf) {
		this.mf = mf;
	}
	
	public int getGid() {
		return gid;
	}
	
	public void setGid(int gid) {
		this.gid = gid;
	}
	
	public String getGname() {
		return gname;
	}
	
	public void setGname(String gname) {
		this.gname = gname;
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
	
	public String getGimgname() {
		return gimgname;
	}
	
	public void setGimgname(String gimgname) {
		this.gimgname = gimgname;
	}
	
	public String getGcodenm() {
		return gcodenm;
	}
	
	public void setGcodenm(String gcodenm) {
		this.gcodenm = gcodenm;
	}
	
	@Override
	public String toString() {
		return "Gproduct [gid=" + gid + ", gname=" + gname + ", gcode=" + gcode + ", gprice=" + gprice + ", gimgname="
				+ gimgname + ", gcodenm=" + gcodenm + "]";
	}
	
	
}
