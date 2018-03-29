package com.kh.worknow.board.model.dao;


import com.kh.worknow.board.model.dao.BoardDao;
import com.kh.worknow.board.model.vo.Board;

import java.util.*;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("bDao")
public class BoardDaoImpl implements BoardDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int getListCount() {
		return sqlSession.selectOne("Board.getListCount");
	}

	@Override
	public ArrayList<Board> selectList(int currentPage, int limit) {
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList(sqlSession.selectList("Board.selectList", null, rows));
	}

	@Override
	public ArrayList<Board> selectTopList() {
		RowBounds rows = new RowBounds(0, 5);
		return new ArrayList(sqlSession.selectList("Board.selectTop5", null, rows));
	}

	@Override
	public Board selectBoard(int boardNum) {
		return sqlSession.selectOne("Board.selectOne", boardNum);
	}

	@Override
	public int insertBoard(Board b) {
		return sqlSession.insert("Board.insertBoard", b);
	}

	@Override
	public int insertReply(Board replyBoard) {
		return sqlSession.insert("Board.insertReplyLevel", replyBoard);
	}

	@Override
	public int addReadCount(int boardNum) {
		return sqlSession.update("Board.addReadCount", boardNum);
	}

	@Override
	public int updateBoard(Board b) {
		return sqlSession.update("Board.updateBoard", b);
	}

	@Override
	public int updateReplySeq(Board replyBoard) {
		return sqlSession.update("Board.updateReplySeq", replyBoard);
	}

	@Override
	public int updateBoardReply(Board b) {
		return sqlSession.update("Board.updateBoardReply", b);
	}

	@Override
	public int deleteBoard(int boardNum) {
		return sqlSession.delete("Board.deleteBoard", boardNum);
	}
	
	@Override
	public int testBoard() {
		return sqlSession.selectOne("Board.getListCount");
	}
}
