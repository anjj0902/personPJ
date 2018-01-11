package com.java.web.controller;



import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.java.web.Service.MenuServiceInterface;
import com.java.web.Service.noticelistServiceInterface;
import com.java.web.Service.noticemodifyServiceInterface;

import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;

@Controller
public class menuController {

	 @Autowired 
	   noticelistServiceInterface nlsi;
	   @Autowired 
	   MenuServiceInterface dtsi;
	   @Autowired 
	   noticemodifyServiceInterface nmsi;
	 @RequestMapping("/menuregister")
	   public String menuregister(HttpServletRequest req, ModelAndView mav){
	      return "menuregister";
	   }
	  @RequestMapping("/addMenu")
	   public String addMenu(HttpServletRequest req, ModelAndView mav) throws Exception{
	      dtsi.save(req);
	      return "redirect:/spagetti";
	   }
	  @RequestMapping("/getMenu")
	   public @ResponseBody String getMenu(HttpServletRequest req, ModelAndView mav) throws Exception{
	      String menu_type = req.getParameter("menu_type");
	      
	      List<HashMap<String,Object>> list = dtsi.getMenu(menu_type);
	      
	      JSONArray json_arr=new JSONArray();
	      
	      json_arr.addAll(list);
	       System.out.println(json_arr.toString());
	      
	      return json_arr.toString();
	   }



}
