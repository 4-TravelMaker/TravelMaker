package com.travelmaker.board.model.service;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.travelmaker.board.model.dao.BoardDAO_lhk;
import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.Pagination;

import static com.travelmaker.common.JDBCTemplate.*;

public class BoardService_lhk {
	
	BoardDAO_lhk dao = new BoardDAO_lhk();
	

	/** 검색결과 Service
	 * @param searchparam
	 * @return boardList
	 * @throws Exception
	 */
	public Map<String, Object> searchList(String searchparam, int cp) throws Exception {
		
		Connection conn = getConnection();
		
		int listCount = dao.searchListCount(conn, searchparam);
		
		int limit = 6;
		
		Pagination pagination = new Pagination(cp, listCount, limit);
		List<Board> boardList = dao.searchList(conn,searchparam , pagination );
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		
		
		close(conn);
		
		
		
		
		return map;
	}


	/** 여행정보 Service
	 * @param searchResult
	 * @throws Exception
	 * @return boardList
	 */
	public Map<String, Object> travelInfos(String searchparam , int cp) throws Exception {
		
		Connection conn = getConnection();
		
		int listCount = dao.searchListCount1(conn, searchparam);
		
		int limit = 6;
		
		Pagination pagination = new Pagination(cp, listCount, limit);
		
		List<Board> boardList = dao.travelInfos(conn , searchparam , pagination);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		
		return map;
	}


	/** 여행리뷰 Service
	 * @param searchResult
	 * @return boardList
	 * @throws Exception
	 */
	public Map<String, Object> travelReview(String searchparam , int cp) throws Exception {
		
		Connection conn = getConnection();
		
		int listCount = dao.searchListCount2(conn, searchparam);
		
		int limit = 6;
		
		Pagination pagination = new Pagination(cp, listCount, limit);
		
		List<Board> boardList = dao.travelReview(conn,searchparam, pagination );
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		
		return map;
	}


	/** 전체 Service
	 * @param searchResult
	 * @return boardList
	 * @throws Exception
	 */
	public Map<String, Object> travelAll(String searchparam , int cp) throws Exception {
		
		Connection conn = getConnection();
		
		int listCount = dao.searchListCount3(conn, searchparam);
		
		int limit = 6;
		
		Pagination pagination = new Pagination(cp, listCount, limit);
		
		List<Board> boardList = dao.travelAll(conn,searchparam,pagination);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		
		return map;
	}

}
