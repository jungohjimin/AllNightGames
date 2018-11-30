package com.gproduct;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.mapper.GproductMapper;
import com.vo.Gproduct;

@Repository("gproductdao")
public class GproductDao implements Dao<Integer, Gproduct> {
	
	@Autowired
	GproductMapper gm;

	@Override
	public void insert(Gproduct v) {
		gm.insert(v);
	}

	@Override
	public void delete(Integer k) {
		gm.delete(k);
	}

	@Override
	public void update(Gproduct v) {
		gm.update(v);
	}

	@Override
	public Gproduct select(Integer k) {
		return gm.select(k);
	}

	@Override
	public ArrayList<Gproduct> select() {
		return gm.selectall();
	}

}
