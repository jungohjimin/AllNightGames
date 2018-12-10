package com.mapper;

import java.util.ArrayList;

import com.vo.Cart;

public interface CartMapper {
	public void insert(Cart obj);
	public void delete(String obj);
	public void deletereal(Cart obj);
	public void update(Cart obj);
	public Object select(String obj);
	public ArrayList<Cart> selectall();
}
