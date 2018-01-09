package com.java.web.Service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.web.dao.CusDetailDaointerface;
@Service
public class CusDetailService implements CusDetailServiceInterface {

	@Autowired
	CusDetailDaointerface cddi;
	@Override
	public HashMap<String, Object> Detail(HashMap<String, Object> param) {
		HashMap<String, Object> map = new HashMap<String, Object>();
//	    System.out.println("dao param:" + param);  
		map.put("data",cddi.Detail(param));
//	    System.out.println("dao map" + map);
	      
	      return map; 
	}

}
