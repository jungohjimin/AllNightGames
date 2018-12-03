package com.order;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.mapper.GproductMapper;
import com.mapper.OrderMapper;
import com.vo.Gproduct;
import com.vo.Order;

@Repository("orderdao")
public class OrderDao implements Dao<Integer, Order> {
	
	@Autowired
	OrderMapper om;

	@Override
	public void insert(Order v) {
		om.insert(v);
	}

	@Override
	public void delete(Integer k) {
		om.delete(k);
	}

	@Override
	public void update(Order v) {
		om.update(v);
	}

	@Override
	public Order select(Integer k) {
		return (Order) om.select(k);
	}

	@Override
	public ArrayList<Order> select() {
		return om.selectall();
	}

}
