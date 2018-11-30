package com.mapper;

import java.util.ArrayList;

import com.vo.Cart;
import com.vo.Order;

public interface OrderMapper {
	public void insert(Order obj);
	public void delete(Integer obj);
	public void update(Order obj);
	public Object select(Integer obj);
	public ArrayList<Order> selectall();
}
