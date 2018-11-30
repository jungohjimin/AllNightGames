package com.mapper;

import java.util.ArrayList;

import com.vo.Gproduct;

public interface GproductMapper {
	public void insert(Gproduct obj);
	public void delete(int obj);
	public void update(Gproduct obj);
	public Gproduct select(int obj);
	public ArrayList<Gproduct> selectall();
}