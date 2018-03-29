package com.kh.worknow.board.model.service;

import java.util.ArrayList;

import com.kh.worknow.board.model.vo.Board;


public interface BoardService {
	
	public int getListCount();
	
	public ArrayList<Board> selectList(int currentPage, int limit);
	
	public ArrayList<Board> selectTopList();
	
	public Board selectBoard(int boardNum);
	
	public int insertBoard(Board b);

	public int insertReply(Board replyBoard);
	
	public void addReadCount(int boardNum);
	
	public int updateBoard(Board b);

	public void updateReplySeq(Board replyBoard);

	public int updateBoardReply(Board b);

	public int deleteBoard(int boardNum);	
	
	public int testBoard();	
}
