package com.cart;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.frame.Removebiz;
import com.frame.Removedao;
import com.vo.Cart;
import com.vo.Gproduct;

@Service("cartbiz")
public class CartBiz implements Biz<String, Cart> , Removebiz<String,Cart> {
	
	@Resource(name="cartdao")
	Dao<String,Cart> dao;
	
	@Resource(name="cartdao")
	Removedao<String,Cart> rdao;
	
	@Override
	public void register(Cart v) throws Exception {
		dao.insert(v);
	}

	@Override
	public void remove(String k) throws Exception {
		dao.delete(k);
	}
	
	
	@Override
	public void modify(Cart v) throws Exception {
		dao.update(v);
	}

	@Override
	public Cart get(String k) throws Exception {
		return (Cart) dao.select(k);
	}

	@Override
	public ArrayList<Cart> get() throws Exception {
		return dao.select();
	}

	@Override
	public void removereal(Cart v) throws Exception {
		rdao.deletereal(v);
	}



}
