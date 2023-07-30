package com.travelmaker.board.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;
import com.travelmaker.board.model.dao.ReplyDAO_kks;
import com.travelmaker.board.model.vo.Reply;

public class ReplyService_kks {
	
	private ReplyDAO_kks dao = new ReplyDAO_kks();

	/** 댓글 목록 조회 Service
	 * @param boardNo
	 * @return replyList
	 * @throws Exception
	 */
	public List<Reply> selectReplyList(int boardNo) throws Exception {
		
		Connection conn = getConnection();
		
		List<Reply> replyList = dao.selectReplyList(conn, boardNo);
		
		close(conn);
		
		return replyList;
	}
	
}
