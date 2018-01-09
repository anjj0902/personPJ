package com.java.web.Service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.web.dao.DetailDaoInterface;
@Service
public class DetailService implements DetailServiceInterface {

	@Autowired
	DetailDaoInterface dtdi;
	
	@Override
	public HashMap<String, Object> Detail(HashMap<String, Object> param) {
		 HashMap<String, Object> map = new HashMap<String, Object>();
	      map.put("data",dtdi.Detail(param));
	     
	      
	      return map;
	}

	
}
