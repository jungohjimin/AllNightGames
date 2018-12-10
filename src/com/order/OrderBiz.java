package com.order;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.Gproduct;
import com.vo.Orderr;

@Service("orderbiz")
public class OrderBiz implements Biz<Integer, Orderr> {
	
	@Resource(name="orderdao")
	Dao dao;

	@Override
	public void register(Orderr v) throws Exception {
		dao.insert(v);
	}

	@Override
	public void remove(Integer k) throws Exception {
		dao.delete(k);
	}

	@Override
	public void modify(Orderr v) throws Exception {
		dao.update(v);
	}

	@Override
	public Orderr get(Integer k) throws Exception {
		return (Orderr) dao.select(k);
	}

	@Override
	public ArrayList<Orderr> get() throws Exception {
		return dao.select();
	}

}
