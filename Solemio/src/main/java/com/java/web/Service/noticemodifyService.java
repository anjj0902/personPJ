package com.java.web.Service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.web.dao.noticemodifyDaoInterface;
@Service
public class noticemodifyService implements noticemodifyServiceInterface {

	@Autowired
	noticemodifyDaoInterface nmdi;
	
	@Override
	public HashMap<String, Integer> fileUpdate(HashMap<String, Object> param) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("status", nmdi.fileUpdate(param));
		return map;
	}

}
