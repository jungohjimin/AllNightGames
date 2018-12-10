package com.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Cart;
import com.vo.Cust;
import com.vo.Gproduct;
import com.vo.Orderdetail;
import com.vo.Orderr;

@Controller
public class OrderController {
	@Resource(name = "orderbiz")
	Biz<Integer, Orderr> biz2;

	@Resource(name = "gproductbiz")
	Biz<Integer, Gproduct> biz;

	@Resource(name = "cartbiz")
	Biz<String, Cart> cbiz;

	@Resource(name = "orderdetailbiz")
	Biz<Integer, Orderdetail> obiz;

	@RequestMapping("/order.ang")
	public ModelAndView order(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView ov = new ModelAndView();
		ArrayList<Orderr> oolist = null;
		ArrayList<Orderr> orlist = new ArrayList<Orderr>();
		Orderr olist = null;
		ov.setViewName("main");
		Cust cust = (Cust) session.getAttribute("login_cust");
		String cust_id = cust.getCust_id();
		int gid = Integer.parseInt(request.getParameter("gid"));
		/* (ORDER_SEQ.NEXTVAL,#{cust_id},#{totalprice},#{count},SYSDATE,#{pstatus}) */
		Gproduct gproduct = biz.get(gid);
		int totalprice = gproduct.getGprice();
		olist = new Orderr(cust_id, totalprice, "ordering", 1);
		biz2.register(olist);

		oolist = biz2.get();
		System.out.println(oolist);
		for (int i = 0; i < oolist.size(); i++) {
			if (oolist.get(i).getCust_id().equals(cust_id)) {
				orlist.add(oolist.get(i));
			}
		}
		System.out.println(orlist);
		try {

			ov.addObject("center", "orderr");
			ov.addObject("orlist", orlist);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ov;

	}

	@RequestMapping("/pay.ang")
	public ModelAndView pay(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView ov = new ModelAndView();
		int pid = Integer.parseInt(request.getParameter("oid"));
		Orderr plist = null;
		plist = biz2.get(pid);
		plist.setPstatus("ordered");
		biz2.modify(plist);
		ov.setViewName("main");
		Cust cust = (Cust) session.getAttribute("login_cust");
		String cust_id = cust.getCust_id();
		ArrayList<Orderr> oolist = null;
		ArrayList<Orderr> orlist = new ArrayList<Orderr>();
		oolist = biz2.get();
		for (int i = 0; i < oolist.size(); i++) {
			if (oolist.get(i).getCust_id().equals(cust_id)) {
				orlist.add(oolist.get(i));
			}
		}
		try {

			ov.addObject("center", "orderr");
			ov.addObject("orlist", orlist);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ov;
	}

	@RequestMapping("/ordel.ang")
	public ModelAndView ordel(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView ov = new ModelAndView();
		int did = Integer.parseInt(request.getParameter("oid"));
		System.out.println(did);
		Orderr plist = null;
		obiz.remove(did);
		biz2.remove(did);
		ov.setViewName("main");
		Cust cust = (Cust) session.getAttribute("login_cust");
		String cust_id = cust.getCust_id();
		ArrayList<Orderr> oolist = null;
		ArrayList<Orderr> orlist = new ArrayList<Orderr>();
		oolist = biz2.get();
		for (int i = 0; i < oolist.size(); i++) {
			if (oolist.get(i).getCust_id().equals(cust_id)) {
				orlist.add(oolist.get(i));
			}
		}
		try {

			ov.addObject("center", "orderr");
			ov.addObject("orlist", orlist);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ov;
	}

	@RequestMapping("/orderr.ang")
	public ModelAndView orderr(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView ov = new ModelAndView();
		Cust cust = (Cust) session.getAttribute("login_cust");
		String cust_id = cust.getCust_id();
		ArrayList<Cart> clist = null;
		ArrayList<Cart> cclist =new ArrayList<Cart>();
		Orderdetail odlist = null;
		clist=cbiz.get();
		int totalprice=0;
		for (int i = 0; i < clist.size(); i++) {
			if(clist.get(i).getCust_id().equals(cust_id)) {
				cclist.add(clist.get(i));
			}
		}
		
		
		for (int i = 0; i < cclist.size(); i++) {
			totalprice+=cclist.get(i).getGprice()*cclist.get(i).getCount();
		}
		
		if(totalprice != 0) {
		
		/*(ORDERDETAIL_SEQ.NEXTVAL,#{oid},#{gid},#{gcode},#{gprice},#{count},#{gserialnm})*/
		
		Orderr olist = null;
		/* (ORDER_SEQ.NEXTVAL,#{cust_id},#{totalprice},#{count},SYSDATE,#{pstatus}) */
		olist = new Orderr(cust_id, totalprice, "ordering", 1);
		biz2.register(olist);
		ArrayList<Orderr> oolist= null;
		ArrayList<Orderr> orlist = new ArrayList<Orderr>();
		oolist = biz2.get();
		System.out.println(oolist);
		for (int i = 0; i < oolist.size(); i++) {
			if (oolist.get(i).getCust_id().equals(cust_id)) {
				orlist.add(oolist.get(i));
			}
		}
		System.out.println(orlist);
		try {
			ov.setViewName("main");
			ov.addObject("center", "orderr");
			ov.addObject("orlist", orlist);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	/*	ov.addObject("center", "orderr");
		ov.addObject("cclist", cclist);*/
		ArrayList<Orderr> oklist =null;
		oklist=biz2.get();
		
		ArrayList<Integer> maxoid = new ArrayList<Integer>();
		
		for( int i = 0 ; i<oklist.size(); i++) {
			
			maxoid.add(oklist.get(i).getOid());
		}
		
		int oid = Collections.max(maxoid);
		System.out.println(oid);
		for (int i = 0; i < cclist.size(); i++) {
			Gproduct gprod=null;
			 gprod= biz.get(cclist.get(i).getGid());
			odlist=null;
			int gserialnm = 0;
			gserialnm = (int)(Math.random()*100000000+1);
			odlist=new Orderdetail(oid,gprod.getGid(), gprod.getGcode(), gprod.getGprice(),cclist.get(i).getCount(),gserialnm);
			obiz.register(odlist);
		}
		cbiz.remove(cust_id);
		}
		else { 
			ov.setViewName("main");
			ov.addObject("center","cartempty");
		}
		
		
		
		
		
		
		return ov;
	}
	@RequestMapping("/orderdetail.ang")
	public ModelAndView orderdetail(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView ov = new ModelAndView();
		Cust cust = (Cust) session.getAttribute("login_cust");
		String cust_id = cust.getCust_id();
		
		
		
		/*(ORDERDETAIL_SEQ.NEXTVAL,#{oid},#{gid},#{gcode},#{gprice},#{count},#{gserialnm})*/
		
		Orderr olist = null;
		/* (ORDER_SEQ.NEXTVAL,#{cust_id},#{totalprice},#{count},SYSDATE,#{pstatus}) */
		ArrayList<Orderdetail> odlist= null;
		ArrayList<Orderdetail> oddlist = new ArrayList<Orderdetail>();
		int oid = Integer.parseInt(request.getParameter("oid"));
		odlist = obiz.get();
		for (int i = 0; i < odlist.size(); i++) {
			if (odlist.get(i).getOid()==oid) {
				oddlist.add(odlist.get(i));
			}
		}
		System.out.println(oddlist);
		ArrayList<Gproduct> glist=null;
		ArrayList<Gproduct> gllist=new ArrayList<Gproduct>();
		
			for (int i = 0; i< oddlist.size();i++) {
					gllist.add(biz.get(oddlist.get(i).getGid()));
				}
			
		System.out.println(gllist);
		Orderr checkstatus= null;
		checkstatus=biz2.get(oid);
		String status = checkstatus.getPstatus();
			
		try {
			ov.setViewName("main");
			ov.addObject("center", "orderdetail");
			ov.addObject("oddlist", oddlist);
			ov.addObject("gllist",gllist);
			ov.addObject("status",status);
			

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ov;
	}
	
	@RequestMapping("/mypurchase.ang")
	public ModelAndView mypurchase(HttpSession session, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Cust cust = (Cust) session.getAttribute("login_cust");
		ArrayList<Orderr> list = null;
		ArrayList<Orderr> cust_cart = new ArrayList<Orderr>();
		mv.setViewName("main");
		try {
			if(cust != null) {
				list = biz2.get();
				for (int i = 0; i < list.size(); i++) {
					if (list.get(i).getCust_id().equals(cust.getCust_id())
							&& list.get(i).getPstatus().equals("ordered")) {
						cust_cart.add(list.get(i));
					}
				}
				mv.addObject("center", "mypurchase");
				mv.addObject("cartlist", cust_cart);
				mv.addObject("csize", cust_cart.size());
				mv.addObject("id", cust.getCust_id());
			}
			else {
				mv.addObject("center", "login");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
}