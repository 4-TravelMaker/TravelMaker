package com.travelmaker.board.model.service;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.travelmaker.common.JDBCTemplate.*;

import com.travelmaker.board.model.dao.BoardDAO_kks;
import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.BoardImage;
import com.travelmaker.board.model.vo.Pagination;

public class BoardService_kks {

	private BoardDAO_kks dao = new BoardDAO_kks();
	
	/** 여행 리뷰 게시판 조회 Service
	 * @param type
	 * @param cp
	 * @return map
	 * @throws Exception
	 */
	public Map<String, Object> selectBoardList(int type, int cp) throws Exception {
		
		Connection conn = getConnection();
		
		// 1. 게시판 이름 얻어오기
		String boardName = dao.selectBoardName(conn, type);
		
		// 특정 게시판 전체 게시글 수 조회
		int listCount = dao.getListCount(conn, type);
		
		// 한 페이지에 보여질 게시글 수 == 6
		int limit = 6;
		
		// 2. 페이지네이션 객체 생성
		Pagination pagination = new Pagination(cp, listCount, limit);
		
		// 3. 게시글 목록 조회
		List<Board> boardList = dao.selectBoardList(conn, pagination, type);
		
		// 4. 게시글 썸네일 이미지 얻어오기
		List<BoardImage> imageList = dao.selectBoardThumbnail(conn, type);
		
		// Map 객체에 게시판 이름, 페이지네이션, 게시글 목록, 게시글 썸네일 이미지 저장
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("boardName", boardName);
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		map.put("imageList", imageList);
		
		close(conn);
		
		return map;
		
	}

}
