package com.java.web.Service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.web.dao.cusvoicelistDaointerface;
@Service
public class cusvoicelistService implements cusvoicelistServiceInterface {
@Autowired
cusvoicelistDaointerface cldi;
HashMap<String,Object> map;
	@Override
	public HashMap<String, Object> cusgetNewsList(HashMap<String, Object> param) {
		map = new HashMap<String,Object>();
		map.put("list", cldi.cusgetNewsList(param));
		
		HashMap<String, Object> totCnt = cldi.totCnt();
		map.put("totCnt", totCnt);
		 
		return map;
	}

}
