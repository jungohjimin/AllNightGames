package com.cust;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.Cust;

@Service("custbiz")
public class CustBiz implements Biz<String, Cust> {
	
	@Resource(name="custdao")
	Dao dao;

	@Override
	public void register(Cust v) throws Exception {
		dao.insert(v);
	} 

	@Override
	public void remove(String k) throws Exception {
		dao.delete(k);
	}

	@Override
	public void modify(Cust v) throws Exception {
		dao.update(v);
	}

	@Override
	public Cust get(String k) throws Exception {
		return (Cust) dao.select(k);
	}

	@Override
	public ArrayList<Cust> get() throws Exception {
		return dao.select();
	}

}
