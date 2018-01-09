package com.java.web.dao;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.web.Service.cusmodifyDaoInterface;
@Service
public class cusmodifyService implements cusmodifyServiceInterface {

	@Autowired
	cusmodifyDaoInterface cddi;
	@Override
	public HashMap<String, Integer> fileUpdate(HashMap<String, Object> param) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("status", cddi.fileUpdate(param));
		return map;
	}

}
