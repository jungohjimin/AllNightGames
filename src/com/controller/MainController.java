package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Cust;

@Controller
public class MainController {
	
	@Resource(name="cbiz")
	Biz<String, Cust> biz;

	@RequestMapping("/main.ang")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/login.ang")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		return mv;
	} 
	
	@RequestMapping("/loginimpl.ang")
	public ModelAndView loginimpl(
			HttpServletRequest request, HttpSession session
			,@RequestParam(value="id",required=true) String id,@RequestParam String pwd) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		Cust dbcust = null;
		try {
			dbcust = biz.get(id);
		} catch (Exception e) {
			mv.addObject("center", "loginfail");
			e.printStackTrace();
		}
		return mv;
	}
	
	@ModelAttribute("aa")
	public Map<String,String> aa(){
		Map<String,String> map = new HashMap<>();
		map.put("1", "서울");
		map.put("2", "대전");
		map.put("3", "부산");
		map.put("4", "대구");
		return map;
	}
	
	@RequestMapping("/logout.mc")
	public String logout(HttpServletRequest request, HttpSession session) {
		if(session != null) {
			session.invalidate();
		}
		return "main";
	}
	
	@RequestMapping("/register.mc")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("center", "register");
		return mv;
	}
	
	@RequestMapping("/registerimpl.mc")
	public ModelAndView registerimpl(Cust cust) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		try {
			biz.register(cust);
			mv.addObject("center", "registerok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			mv.addObject("center", "registerfail");
			e.printStackTrace();
		}
		return mv;
	}
}





