package com.orderdetail;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.mapper.OrderdetailMapper;
import com.vo.Orderdetail;

@Repository("orderdetaildao")
public class OrderdetailDao implements Dao<Integer, Orderdetail> {
	
	@Autowired
	OrderdetailMapper om;

	@Override
	public void insert(Orderdetail v) {
		om.insert(v);
	}

	@Override
	public void delete(Integer k) {
		om.delete(k);
	}

	@Override
	public void update(Orderdetail v) {
		om.update(v);
	}

	@Override
	public Orderdetail select(Integer k) {
		return (Orderdetail) om.select(k);
	}

	@Override
	public ArrayList<Orderdetail> select() {
		return om.selectall();
	}

}
