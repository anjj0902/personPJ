package com.java.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.web.util.HttpUtil;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "/JSON", method = RequestMethod.GET)
	public void home(HttpServletRequest req, HttpServletResponse resp) {
		// 파라메터 값 받아서 map으로 변경하기.
		HashMap<String, Object> param = HttpUtil.getParameterMap(req);
		// 결과값을 JSON으로 출력하기.
		HttpUtil.sendResponceToJson(resp, param);
	}
	@RequestMapping("/main")
	public String main(){
		return "main";
	}
	@RequestMapping("/direction")
	public String direction(){
		return "direction";
	}
	@RequestMapping("/cusvoice")
	public String cusvoice(){
		return "cusvoice";
	}
	@RequestMapping("/cusvoicedetail")
	public String cusvoicedetail(){
		return "cusvoicedetail";
	}
	@RequestMapping("/cusvoiceregister")
	public String cusvoiceregister(){
		return "cusvoiceregister";
	}
	@RequestMapping("/interior")
	public String interior(){
		return "interior";
	}
	@RequestMapping("/introduce")
	public String introduce(){
		return "introduce";
	}
	@RequestMapping("/memberinfo")
	public String memberinfo(){
		return "memberinfo";
	}
	@RequestMapping("/memberupdate")
	public String memberupdate(){
		return "memberupdate";
	}
	@RequestMapping("/menuregister")
	public String menuregister(){
		return "menuregister";
	}
	@RequestMapping("/mypage")
	public String mypage(){
		return "mypage";
	}
	@RequestMapping("/notice")
	public String notice(){
		return "notice";
	}
	@RequestMapping("/noticedetail")
	public String noticedetail(){
		return "noticedetail";
	}
	@RequestMapping("/noticeregister")
	public String noticeregister(){
		return "noticeregister";
	}
	@RequestMapping("/pizza")
	public String pizza(){
		return "pizza";
	}
	@RequestMapping("/salad")
	public String salad(){
		return "salad";
	}
	@RequestMapping("/sidemenu")
	public String sidemenu(){
		return "sidemenu";
	}
	@RequestMapping("/spagetti")
	public String spagetti(){
		return "spagetti";
	}
	@RequestMapping("/stake")
	public String stake(){
		return "stake";
	}
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
}
