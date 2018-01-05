package com.java.web.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.java.web.Service.LoginServiceInterface;
import com.java.web.Service.joinServiceInterface;
import com.java.web.util.HttpUtil;



@Controller
public class LoginController {
   
   @Autowired
   LoginServiceInterface lsi;
   
   @RequestMapping("/loginData")
   public ModelAndView loginData(HttpServletRequest req, HttpServletResponse response, HttpSession session){
	  HashMap<String, Object> map = new HashMap<String, Object>();
	  map.put("id", req.getParameter("id"));
	  map.put("pw", req.getParameter("pw"));
      map = lsi.selectLogin(map);
      System.out.println("controller : "+map);
      if(Integer.parseInt(map.get("stat").toString())==1){
    	  session.setAttribute("user", map);
      }
      
      return HttpUtil.makeHashToJsonModelAndView(map);
   }
   
   @RequestMapping("/checkLogin")
	public ModelAndView checkLogin(HttpSession session, HttpServletResponse resp){
		HashMap<String, HashMap<String, Object>> user = (HashMap<String, HashMap<String, Object>>) session.getAttribute("user");
		HashMap<String, Object> data = new HashMap<String, Object> ();
		if(user == null){
			data.put("state", 0);
		}else{
			data.put("id", user.get("id"));
			data.put("auth", user.get("auth"));
			data.put("state", 1);
		}
		return HttpUtil.makeHashToJsonModelAndView(data);
	}
	@RequestMapping("/logout")
	 public void logout(HttpSession session, HttpServletResponse resp){
		System.out.println("로그아웃!");
		session.invalidate();
		HttpUtil.sendResponceToJson(resp, new HashMap<String,Object>());
	}
	
	@RequestMapping(value="/noticewrite",method = RequestMethod.POST )
	public ModelAndView noticewrite(HttpServletRequest req, ModelAndView mav){
		HashMap<String,Object> param = new HashMap<String, Object>();
		param.put("title",req.getParameter("title"));
		param.put("contents",req.getParameter("contents"));
		System.out.println("controller : param" + param);
		
		return mav;
		
	}

}