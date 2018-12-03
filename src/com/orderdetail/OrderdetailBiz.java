package com.orderdetail;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.Orderdetail;

@Service("orderdetailbiz")
public class OrderdetailBiz implements Biz<Integer, Orderdetail> {
	
	@Resource(name="orderdetaildao")
	Dao dao;

	@Override
	public void register(Orderdetail v) throws Exception {
		dao.insert(v);
	}

	@Override
	public void remove(Integer k) throws Exception {
		dao.delete(k);
	}

	@Override
	public void modify(Orderdetail v) throws Exception {
		dao.update(v);
	}

	@Override
	public Orderdetail get(Integer k) throws Exception {
		return (Orderdetail) dao.select(k);
	}

	@Override
	public ArrayList<Orderdetail> get() throws Exception {
		return dao.select();
	}

}
