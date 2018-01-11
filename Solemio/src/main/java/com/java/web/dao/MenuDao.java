package com.java.web.dao;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class MenuDao implements MenuDaoInterface {
	  @Resource(name="sqlSession")
	   SqlSession session;
	@Override
	public void save(HashMap<String, Object> param) {
	      session.insert("menu.InsertMenu", param);
		
	}

	@Override
	public List<HashMap> getMenu(String menu_type) {
		  
	      return session.selectList("menu.SelectMenu", menu_type);
	}

}
