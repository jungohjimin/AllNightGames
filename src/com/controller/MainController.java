package com.controller;

import static org.hamcrest.CoreMatchers.nullValue;


import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Cust;
import com.vo.Gproduct;

@Controller
public class MainController {

	@Resource(name = "custbiz")
	Biz<String, Cust> biz;

	@Resource(name = "gproductbiz")
	Biz<String, Gproduct> biz1;

	@RequestMapping("/main.ang")
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		ArrayList<Gproduct> list = null;
		mv.setViewName("main");
		try {
			list = biz1.get();
			mv.addObject("center","center");
			mv.addObject("plist", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/login.ang")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("center", "login");
		return mv;
	}

	@RequestMapping("/loginimpl.ang")
	public ModelAndView loginimpl(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		ArrayList<Gproduct> list = null;
		mv.setViewName("main");
		Cust dbcust = null;
		try {
			dbcust = biz.get(request.getParameter("id"));
			if (dbcust.getCust_pw().equals(request.getParameter("pwd"))) {
				session.setAttribute("login_cust", dbcust);
				mv.addObject("center", "center");
				list = biz1.get();
				mv.addObject("plist", list);
			}
			else {
				System.out.println("else");
				mv.addObject("center", "login");
				mv.addObject("logok", "pwd");
			}
		} catch(NullPointerException e) {
			System.out.println("null");
			mv.addObject("center", "login");
			mv.addObject("logok", "notid");
		}
		catch (Exception e) {
			System.out.println("exception");
			mv.addObject("center", "login");
			mv.addObject("logok", "asd");
		}
		return mv;
	}

	@RequestMapping("/logout.ang")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		if (session != null) {
			session.invalidate();
		}
		ModelAndView mv = new ModelAndView();
		ArrayList<Gproduct> list = null;
		mv.setViewName("main");
		try {
			list = biz1.get();
			mv.addObject("center","center");
			mv.addObject("plist", list);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mv;
		
	}

	@RequestMapping("/register.ang")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("center", "register");
		return mv;
	}

	@RequestMapping("/registerimpl.ang")
	public ModelAndView registerimpl(Cust cust) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		try {
			biz.get(cust.getCust_id());
			biz.register(cust);
			mv.addObject("center", "registerok");
			mv.addObject("rid", cust.getCust_id());
		}
		catch(DuplicateKeyException e) {
			mv.addObject("center", "register");
			mv.addObject("check", "no");
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			mv.addObject("center", "registerfail");
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/registercheck.ang")
	public ModelAndView registercheck(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String id = request.getParameter("cust_id");
		mv.setViewName("main");
		mv.addObject("center", "register");
		
		try {
			Cust custcomp = null;
			biz.get(id).getCust_id();
			System.out.println(id);
			mv.addObject("check", "no");
			
		} catch(NullPointerException e) {
			mv.addObject("check", id);
		}
		catch (Exception e) {
			mv.addObject("center", "registerloadfail");
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/account.ang")
	public ModelAndView account(HttpServletRequest request, HttpSession session,Cust cust) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		Cust dbcust = (Cust) session.getAttribute("login_cust");
		try {
			mv.addObject("center", "account");
			dbcust = biz.get(dbcust.getCust_id());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/accountimpl.ang")
	public ModelAndView accountimpl(Cust cust) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		System.out.println(cust);
		try {
			biz.modify(cust);
			mv.addObject("center", "accountok");
		} catch (Exception e) {
			mv.addObject("center", "accountloadfail");
			e.printStackTrace();
		}
		return mv;
	}
}