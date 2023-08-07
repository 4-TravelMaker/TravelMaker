package com.travelmaker.board.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.travelmaker.board.model.dao.BoardDAO_phj;
import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.Category;
import com.travelmaker.board.model.vo.Region;
import com.travelmaker.board.model.vo.Reply;
import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.travelmaker.board.model.vo.Reply;


public class BoardService_phj {
	
	private BoardDAO_phj dao = new BoardDAO_phj();

	
	
	/** 지역 상세페이지 조회
	 * @param boardNo
	 * @return region
	 * @throws Exception
	 */
	public Region selectDetail(int boardNo) throws Exception {
		
		Connection conn = getConnection();
		
		Region region = dao.selectDetail(conn, boardNo);
		
		close(conn);

		return region;
	}

	
	
	/** 지역별 카테고리 조회 
	 * @param ctgrNo
	 * @return map
	 * @throws Exception
	 */
	public Map<String, Object> selectRegion(int ctgrNo) throws Exception{
		
		Connection conn = getConnection();
		
		
//		List<String> ctgrName = dao.selectCtgrName(conn,ctgrNo); 
		
		List<Board> bList = dao.selectCtgrName(conn, ctgrNo);
		
		List<Category> cList = dao.selectRegion(conn,ctgrNo);
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("bList", bList);
		map.put("cList", cList);
		
		close(conn);
		
		return map;
	}
	

	/** 북마크 상태 조회 Service
	 * @param boardNo
	 * @param memberNo
	 * @return bookmarkCount
	 * @throws Exception
	 */
	public int countBookmark(int boardNo, int memberNo) throws Exception {
		
		Connection conn = getConnection();
		
		int bookmarkCount = dao.countBookmark(conn, boardNo, memberNo);
		
		close(conn);
		
		return bookmarkCount;
	}
}
