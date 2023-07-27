package com.travelmaker.member.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.travelmaker.board.model.vo.Reply;
import com.travelmaker.member.model.dao.MemberDAO_phj;
import com.travelmaker.member.model.vo.Member;

public class MemberService_phj {
	
	private MemberDAO_phj dao = new MemberDAO_phj();

	/** 비밀번호 조회 Serivice
	 * @param mem
	 * @return member
	 * @throws Exception
	 */
	public Member selectPw(Member mem) throws Exception {
		
		Connection conn = getConnection();
		
		Member member = dao.selectPw(conn, mem);
		
		close(conn);
		
		return member;
	}
	

}
