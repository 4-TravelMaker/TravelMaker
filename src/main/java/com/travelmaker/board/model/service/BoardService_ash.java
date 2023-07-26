package com.travelmaker.board.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.travelmaker.board.model.dao.BoardDAO_ash;
import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.board.model.vo.Pagination;

public class BoardService_ash {
	
	private BoardDAO_ash dao = new BoardDAO_ash();
	
	/** 일대일 문의 게시글 목록 조회 Service
	 * @param cp
	 * @return map
	 * @throws Exception
	 */
	public Map<String, Object> selectOneOnOneInquiryList(int type, int cp) throws Exception {

		Connection conn = getConnection();
		
		// 전체 게시글 수
		int listCount = dao.getListCount(conn, type);
		
		// 전체 게시글 수 + 현재 페이지(cp) 이용해서 페이지네이션 객체 생성
		Pagination pagination = new Pagination(cp, listCount);
		
		// 게시글 목록 조회
		List<Board> boardList = dao.selectBoardList(conn, pagination, type);
		
		// Map 객체를 생성해서 결과 모두 객체에 저장
		Map<String, Object> map = new HashMap<>();
		
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		
		close(conn);
		
		return map;
	}

	/** 일대일 문의 게시글 상세 조회 Service
	 * @param boardNo
	 * @return detail
	 * @throws Exception
	 */
	public BoardDetail selectOneOnOneInquiryDetail(int boardNo) throws Exception {
		
		Connection conn = getConnection();
		
		BoardDetail detail = dao.selectOneOnOneInquiryDetail(conn, boardNo);
		
		return detail;
	}

}
