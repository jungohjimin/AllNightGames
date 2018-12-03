package com.order;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.Gproduct;
import com.vo.Order;

@Service("orderbiz")
public class OrderBiz implements Biz<Integer, Order> {
	
	@Resource(name="orderdao")
	Dao dao;

	@Override
	public void register(Order v) throws Exception {
		dao.insert(v);
	} 

	@Override
	public void remove(Integer k) throws Exception {
		dao.delete(k);
	}

	@Override
	public void modify(Order v) throws Exception {
		dao.update(v);
	}

	@Override
	public Order get(Integer k) throws Exception {
		return (Order) dao.select(k);
	}

	@Override
	public ArrayList<Order> get() throws Exception {
		return dao.select();
	}

}
