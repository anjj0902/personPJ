package com.java.web.dao;

import java.util.HashMap;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class CusDetailDao implements CusDetailDaointerface {

	@Resource(name="sqlSession")
	SqlSession session;
	@Override
	public HashMap<String, Object> Detail(HashMap<String, Object> param) {
		return session.selectOne("cussql.selectDetail", param);
	}

}
