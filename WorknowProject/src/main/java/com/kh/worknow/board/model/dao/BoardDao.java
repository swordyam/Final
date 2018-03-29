package com.kh.worknow.board.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.kh.worknow.board.model.vo.Board;


public interface BoardDao {
	
	public int getListCount();
	
	public ArrayList<Board> selectList(int currentPage, int limit);
	
	public ArrayList<Board> selectTopList();
	
	public Board selectBoard(int boardNum);
	
	public int insertBoard(Board b);

	public int insertReply(Board replyBoard);
	
	public int addReadCount(int boardNum);
	
	public int updateBoard(Board b);

	public int updateReplySeq(Board replyBoard);

	public int updateBoardReply(Board b);

	public int deleteBoard(int boardNum);
	
	public int testBoard();
}
