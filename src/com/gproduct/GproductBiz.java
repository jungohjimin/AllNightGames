package com.gproduct;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.Gproduct;

@Service("gproductbiz")
public class GproductBiz implements Biz<Integer, Gproduct> {
	
	@Resource(name="gproductdao")
	Dao dao;

	@Override
	public void register(Gproduct v) throws Exception {
		dao.insert(v);
	}

	@Override
	public void remove(Integer k) throws Exception {
		dao.delete(k);
	}

	@Override
	public void modify(Gproduct v) throws Exception {
		dao.update(v);
	}

	@Override
	public Gproduct get(Integer k) throws Exception {
		return (Gproduct) dao.select(k);
	}

	@Override
	public ArrayList<Gproduct> get() throws Exception {
		return dao.select();
	}

}
