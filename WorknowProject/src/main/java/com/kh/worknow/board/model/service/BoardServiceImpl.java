package com.kh.worknow.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.worknow.board.model.dao.BoardDao;
import com.kh.worknow.board.model.vo.Board;

@Service("bService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardDao bDao;
	
	@Override
	public int getListCount() {
		return bDao.getListCount();
	}

	@Override
	public ArrayList<Board> selectList(int currentPage, int limit) {
		return bDao.selectList(currentPage, limit);
	}

	@Override
	public ArrayList<Board> selectTopList() {
		return bDao.selectTopList();
	}

	@Override
	public Board selectBoard(int boardNum) {
		return bDao.selectBoard(boardNum);
	}

	@Override
	public int insertBoard(Board b) {
		return bDao.insertBoard(b);
	}

	@Override
	public int insertReply(Board replyBoard) {
		return bDao.insertReply(replyBoard);
	}

	@Override
	public void addReadCount(int boardNum) {
		bDao.addReadCount(boardNum);
	}

	@Override
	public int updateBoard(Board b) {
		return bDao.updateBoard(b);
	}

	@Override
	public void updateReplySeq(Board replyBoard) {
		bDao.updateReplySeq(replyBoard);
	}

	@Override
	public int updateBoardReply(Board b) {
		return bDao.updateBoardReply(b);
	}

	@Override
	public int deleteBoard(int boardNum) {
		return bDao.deleteBoard(boardNum);
	}

	@Override
	public int testBoard() {
		return bDao.testBoard();
	}
}
