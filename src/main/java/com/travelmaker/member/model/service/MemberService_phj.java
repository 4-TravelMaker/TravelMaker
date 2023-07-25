package com.travelmaker.member.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.travelmaker.board.model.vo.Reply;
import com.travelmaker.member.model.dao.MemberDAO_phj;
import com.travelmaker.member.model.vo.Member;

public class MemberService_phj {
	
	private MemberDAO_phj dao = new MemberDAO_phj();

	/** 댓글 목록 조회 Service
	 * @param inputId
	 * @return rList
	 * @throws Exception
	 */
	public List<Reply> selectReplyList(String inputId) throws Exception {
		
		Connection conn = getConnection();
		
		List<Reply> rList = dao.selectReplyList(conn, inputId);
		
		System.out.println(rList);
		
		close(conn);
		
		return rList;
	}

}
