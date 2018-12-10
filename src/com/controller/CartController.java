package com.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cart.CartBiz;
import com.frame.Biz;
import com.frame.Removebiz;
import com.vo.Cart;
import com.vo.Cust;
import com.vo.Gproduct;

@Controller
public class CartController {

	@Resource(name = "cartbiz")
	Biz<String, Cart> biz;

	@Resource(name = "cartbiz")
	Removebiz<String, Cart> biz2;

	@Resource(name = "gproductbiz")
	Biz<Integer, Gproduct> gbiz;

	@RequestMapping("/checkout.ang")
	public ModelAndView cartlist(HttpSession session, Gproduct gproduct) {
		ModelAndView mv = new ModelAndView();
		Cust cust = (Cust) session.getAttribute("login_cust");
		ArrayList<Cart> list = null;
		ArrayList<Cart> cust_cart = new ArrayList<Cart>();
		int totalprice = 0;
		mv.setViewName("main");
		try {
			list = biz.get();
			for (int i = 0; i < list.size(); i++) {
				if (list.get(i).getCust_id().equals(cust.getCust_id())) {
					cust_cart.add(list.get(i));
					totalprice += list.get(i).getGprice() * list.get(i).getCount();
				}
			}
			mv.addObject("center", "checkout");
			mv.addObject("cartlist", cust_cart);
			mv.addObject("csize", cust_cart.size());
			mv.addObject("totalprice", totalprice);
			mv.addObject("id", cust.getCust_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/buyimpl.ang")
	public ModelAndView buyimpl(HttpSession session, HttpServletRequest request) {
		Cust cust = (Cust) session.getAttribute("login_cust");
		int gid = Integer.parseInt(request.getParameter("g_gid"));
		ModelAndView mv = new ModelAndView();
		ArrayList<Cart> ar = null;
		Cart same = null;
		Gproduct g = null;
		boolean exist = false;
		try {
			ar = biz.get();
			for (int i = 0; i < ar.size(); i++) {
				if (ar.get(i).getGid() == gid && ar.get(i).getCust_id().equals(cust.getCust_id())) {
					same = ar.get(i);
					same.setCount(same.getCount() + 1);
					exist = true;
				}
			}
			if (exist) {
				biz.modify(same);
			} else {
				g = gbiz.get(gid);
				same = new Cart(g.getGid(), cust.getCust_id(), g.getGimgname(), g.getGname(), g.getGprice(), 1);
				biz.register(same);
			}
			mv = cartlist(session, g);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mv;
	}

	@RequestMapping("/deleteimpl.ang")
	public ModelAndView deleteimpl(HttpSession session, HttpServletRequest request) {
		Cust cust = (Cust) session.getAttribute("login_cust");
		int gid = Integer.parseInt(request.getParameter("gid"));
		System.out.println(cust.getCust_id());
		System.out.println(gid);
		ModelAndView mv = new ModelAndView();
		ArrayList<Cart> ar = null;
		Cart delete = null;
		Gproduct g = null;
		try {
			ar = biz.get();
			for (int i = 0; i < ar.size(); i++) {
				if (ar.get(i).getGid() == gid && ar.get(i).getCust_id().equals(cust.getCust_id())) {
					delete = ar.get(i);
				}
			}
			biz2.removereal(delete);
			System.out.println("delete complete");
			mv = cartlist(session, g);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mv;
	}
	
	

}