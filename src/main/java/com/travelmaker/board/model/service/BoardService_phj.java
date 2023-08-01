package com.travelmaker.board.model.service;

import java.util.List;

import com.travelmaker.board.model.dao.BoardDAO_phj;
import com.travelmaker.board.model.vo.Category;
import com.travelmaker.board.model.vo.Region;
import com.travelmaker.board.model.vo.Reply;
import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.travelmaker.board.model.vo.Reply;


public class BoardService_phj {
	
	private BoardDAO_phj dao = new BoardDAO_phj();

	/** 지역별 카테고리 조회 Service
	 * @param ctgrNo
	 * @return cList
	 * @throws Exception
	 */
	public List<Category> selectRegion(int ctgrNo) throws Exception{

		Connection conn = getConnection();
		
		List<Category> cList = dao.selectRegion(conn, ctgrNo);
		
		close(conn);
		
		return cList;
	}
	
	
}
