package com.mapper;

import java.util.ArrayList;

import com.vo.Cart;
import com.vo.Order;
import com.vo.Orderdetail;

public interface OrderdetailMapper {
	public void insert(Orderdetail obj);
	public void delete(Integer obj);
	public void update(Orderdetail obj);
	public Object select(Integer obj);
	public ArrayList<Orderdetail> selectall();
}
