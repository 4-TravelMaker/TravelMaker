package com.travelmaker.board.model.service;

import java.sql.Connection;
import java.util.List;

import com.travelmaker.board.model.dao.BoardDAO_lhk;
import com.travelmaker.board.model.vo.Board;
import static com.travelmaker.common.JDBCTemplate.*;

public class BoardService_lhk {
	
	BoardDAO_lhk dao = new BoardDAO_lhk();
	

	/** 검색결과 Service
	 * @param searchparam
	 * @return boardList
	 * @throws Exception
	 */
	public List<Board> searchList(String searchparam) throws Exception {
		
		Connection conn = getConnection();
		
		List<Board> boardList = dao.searchList(conn,searchparam);
		
		close(conn);
		
		
		
		
		return boardList;
	}

}
