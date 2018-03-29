package com.kh.worknow.main.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository("sDao")
public class SearchDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int testtest() {
		return sqlSession.selectOne("Board.getListCount");
	}
	
	
	
}
