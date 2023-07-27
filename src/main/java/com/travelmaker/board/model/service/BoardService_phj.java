package com.travelmaker.board.model.service;

import java.util.List;

import com.travelmaker.board.model.dao.BoardDAO_phj;
import com.travelmaker.board.model.vo.Category;
import com.travelmaker.board.model.vo.Reply;
import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.travelmaker.board.model.vo.Reply;


public class BoardService_phj {
	
	private BoardDAO_phj dao = new BoardDAO_phj();
	

	/** 카테고리 조회 Service
	 * @param ctgrNo
	 * @return list
	 * @throws Exception
	 */
	public List<Category> selectCategory(int ctgrNo) throws Exception{
		
		Connection conn = getConnection();
		
		List<Category> list = dao.selectCategory(conn,ctgrNo);
		
		close(conn);
		
		return list;
	}



}
