package com.cart;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.frame.Removedao;
import com.mapper.CartMapper;
import com.mapper.GproductMapper;
import com.vo.Cart;
import com.vo.Gproduct;

@Repository("cartdao")
public class CartDao implements Dao<String, Cart>, Removedao<String, Cart> {
	
	@Autowired
	CartMapper cm;

	@Override
	public void insert(Cart v) {
		cm.insert(v);
	}

	@Override
	public void delete(String k) {
		cm.delete(k);
	}
	
	@Override
	public void deletereal(Cart v) {
		cm.deletereal(v);
	}

	@Override
	public void update(Cart v) {
		cm.update(v);
	}

	@Override
	public Cart select(String k) {
		return (Cart) cm.select(k);
	}

	@Override
	public ArrayList<Cart> select() {
		return cm.selectall();
	}

}
