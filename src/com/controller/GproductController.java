package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Gproduct;

@Controller
public class GproductController {
   @Resource(name="gproductbiz")
   Biz<Integer, Gproduct> biz;
   

   @RequestMapping("/single.ang")
   public ModelAndView single(HttpServletRequest request) {
      ModelAndView mv = new ModelAndView();
      int gid =  Integer.parseInt(request.getParameter("gid"));
   
      Gproduct gproduct;
      
      mv.setViewName("main");
      
      try {
         gproduct = biz.get(gid);
         mv.addObject("center", "single");
         mv.addObject("gproduct",gproduct);
      } catch (Exception e) {
         e.printStackTrace();
      }
       
      return mv;
   }
   
   
   
   @RequestMapping("/categorylist.ang")
   public ModelAndView categorylist(HttpServletRequest request) {
	   ModelAndView mv = new ModelAndView();
	      int gcode =  Integer.parseInt(request.getParameter("gcode"));
	      ArrayList<Gproduct> list =null;
	      ArrayList<Gproduct> list1 = new ArrayList<Gproduct>();
	      HashMap map = new HashMap();
	      mv.setViewName("main");
	      
	      
	     
	      System.out.println(gcode);
	      try {
	         list = biz.get();
	         
	        for(int i=0;i<list.size();i++) {
	        	 if(list.get(i).getGcode()==gcode)
	        	 {
	        		list1.add(list.get(i));
	        	 }
	         }
	        for(int i=0;i<(list1.size()/9);i++)
	         {
	        	 for(int j=0;j<list1.size();j++) {
	        		 map.put(i, list1.get(j));
	        	 }
	         }
	         mv.addObject("center", "categorylist");
	         mv.addObject("plist",list1);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	       
	      return mv;
   }
   
   @RequestMapping("/search.ang")
   public ModelAndView search(HttpServletRequest request) {
	   ModelAndView mv = new ModelAndView();
	      String text =  request.getParameter("s");
	      ArrayList<Gproduct> list =null;
	      ArrayList<Gproduct> list1 = new ArrayList<Gproduct>();
	      
	      mv.setViewName("main");
	      
	      
	     
	      System.out.println(text);
	      try {
	         list = biz.get();
	        for(int i=0;i<list.size();i++) {
	        	 if(list.get(i).getGname().toLowerCase().contains(text.toLowerCase()))
	        	 {
	        		list1.add(list.get(i));
	        	 }
	         }
	         mv.addObject("center", "search");
	         mv.addObject("plist",list1);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	       
	      return mv;
   }
   @RequestMapping("/mygames.ang")
   public ModelAndView mygames() {
	   ModelAndView mv = new ModelAndView();
	      ArrayList<Gproduct> list =null;
	      mv.setViewName("main");
	      
	      
	     
	      try {
	         list = biz.get();
	        
	         mv.addObject("center", "mygames");
	         mv.addObject("plist",list);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	       
	      return mv;
   }
   
//   @RequestMapping("/paddimpl.mc")
//   public ModelAndView paddimpl(Product v) {
//      ModelAndView mv = new ModelAndView();
//      mv.setViewName("main");
//      
//      MultipartFile mf = v.getMf();
//      String img = mf.getOriginalFilename();
//      v.setImgname(img);
//      
//      byte[] data;
//      
//      try {
//         data = mf.getBytes();
//         FileOutputStream out = 
//         new FileOutputStream("C:/Users/dlsrj/eclipse-workspace/spring/smvc3/web/img/"+img);
//         out.write(data);
//         out.close();
//         
//         biz.register(v);
//         mv.addObject("center","product/pregisterok");
//         mv.addObject("pname",v.getName());
//         
//      } catch (IOException e) {
//         e.printStackTrace();
//         mv.addObject("center","product/pregisterfail");
//         mv.addObject("pname",v.getName());
//         e.printStackTrace();
//      } catch (Exception e) {
//         // TODO Auto-generated catch block
//         e.printStackTrace();
//      }
//      
//      
//      
//      return mv;
//   }
//   @RequestMapping("/pdetail.mc")
//   public ModelAndView cdetail(HttpServletRequest request) {
//      ModelAndView mv = new ModelAndView();
//      int id = Integer.parseInt(request.getParameter("id"));
//      
//   
//      Product v;
//      mv.setViewName("main");
//      
//      try {
//         v = biz.get(id);
//         mv.addObject("dp",v);
//         mv.addObject("center","product/pdetail");
//         mv.addObject("navi",Navi.cdetail);
//      } catch (Exception e) {
//         // TODO Auto-generated catch block
//         e.printStackTrace();
//      }
//      
//      return mv;
//   }
//   @RequestMapping("/pupdate.mc")
//   public ModelAndView cupdate(HttpServletRequest request) {
//      ModelAndView mv = new ModelAndView();
//      int id = Integer.parseInt(request.getParameter("id"));
//      
//      mv.setViewName("main");
//      
//      try {
//         Product v = biz.get(id);
//         mv.addObject("center","product/pupdate");
//         mv.addObject("product",v);
//         mv.addObject("navi",Navi.clist);
//      } catch (Exception e) {
//         // TODO Auto-generated catch block
//         e.printStackTrace();
//      }
//      
//      return mv;
//   }
//   @RequestMapping("/pupdateimpl.mc")
//   public ModelAndView pupdateimpl(Product v) {
//      ModelAndView mv = new ModelAndView();
//      
//      MultipartFile mf = v.getMf();
//      String img = mf.getOriginalFilename();
//      v.setImgname(img);
//      
//      byte[] data;
//      
//      mv.setViewName("main");
//      try {
//         data = mf.getBytes();
//         FileOutputStream out = 
//         new FileOutputStream("C:/Users/dlsrj/eclipse-workspace/spring/smvc3/web/img/"+img);
//         out.write(data);
//         out.close();
//         
//         biz.modify(v);
//         mv.addObject("center","product/pupdateok");
//         mv.addObject("navi",Navi.cdetail);
//      } catch (Exception e) {
//         e.printStackTrace();
//      }
//      
//      return mv;
//   }
//   @RequestMapping("/pdelete.mc")
//   public ModelAndView cdelete(HttpServletRequest request) {
//      ModelAndView mv = new ModelAndView();
//      int id = Integer.parseInt(request.getParameter("id"));
//      mv.setViewName("main");
//      
//      try {
//         biz.remove(id);
//         mv.addObject("center","product/pdeleteok");
//         mv.addObject("navi",Navi.clist);
//      } catch (Exception e) {
//         // TODO Auto-generated catch block
//         e.printStackTrace();
//      }
//      
//      return mv;
//   }
}