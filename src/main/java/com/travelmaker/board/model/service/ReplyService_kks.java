package com.travelmaker.board.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;
import com.travelmaker.board.model.dao.ReplyDAO_kks;
import com.travelmaker.board.model.vo.Reply;
import com.travelmaker.common.Util;

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

	/** 댓글 등록 Service
	 * @param reply
	 * @return result
	 * @throws Exception
	 */
	public int insertReply(Reply reply) throws Exception {
		
		Connection conn = getConnection();
		
		reply.setReplyContent( Util.XSSHandling( reply.getReplyContent() ) );
		reply.setReplyContent( Util.newLineHandling( reply.getReplyContent() ) );
		
		int result = dao.insertReply(conn, reply);
		
		if(result > 0) commit(conn);
		else 		   rollback(conn);
		
		close(conn);
			
		return result;
		
	}

	/** 댓글 삭제 Service
	 * @param replyNo
	 * @return result
	 * @throws Exception
	 */
	public int deleteReply(int replyNo) throws Exception{
		
		Connection conn = getConnection();
		
		int result = dao.deleteReply(conn, replyNo);
		
		if(result > 0)	commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}
	
}
