package com.order;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.mapper.GproductMapper;
import com.mapper.OrderMapper;
import com.vo.Gproduct;
import com.vo.Orderr;

@Repository("orderdao")
public class OrderDao implements Dao<Integer, Orderr> {
	
	@Autowired
	OrderMapper om;

	@Override
	public void insert(Orderr v) {
		om.insert(v);
	}

	@Override
	public void delete(Integer k) {
		om.delete(k);
	}

	@Override
	public void update(Orderr v) {
		om.update(v);
	}

	@Override
	public Orderr select(Integer k) {
		return (Orderr) om.select(k);
	}
	

	@Override
	public ArrayList<Orderr> select() {
		return om.selectall();
	}

}
