package com.travelmaker.board.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.travelmaker.board.model.dao.BoardDAO_hsn;
import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.Pagination;

public class BoardService_hsn {
	
	private BoardDAO_hsn dao = new BoardDAO_hsn();



	/** 게시글 목록 조회 Service
	 * @param type
	 * @param cp
	 * @return map
	 * @throws Exception
	 */
	public Map<String, Object> selectBoardNoticeList(int type, int cp) throws Exception{
		
		Connection conn = getConnection();
		
		// 게시판 이름 조회
		String boardName = dao.selectBoardName(conn, type);
		
		// 특정 게시판 전체 게시글 수 조회 DAO 호출
		int listCount = dao.getListCount(conn ,type);
		
		// 페이지네이션 객체 생성
		Pagination pagination = new Pagination(cp, listCount);
		
		// 게시글 목록 조회
		List<Board> boardList = dao.selectBoardList(conn, pagination, type);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("boardName", boardName);
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		
		close(conn);
		
		
		
		return map;
	}}
