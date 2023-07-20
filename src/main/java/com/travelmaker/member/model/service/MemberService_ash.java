package com.travelmaker.member.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.travelmaker.member.model.dao.MemberDAO_ash;
import com.travelmaker.member.model.vo.Member;

public class MemberService_ash {

	private MemberDAO_ash dao = new MemberDAO_ash();

	/** 회원 목록 조회 Service
	 * @return list
	 * @throws Exception
	 */
	public List<Member> selectAll() throws Exception {
		
		Connection conn = getConnection();
		
		List<Member> list = dao.selectAll(conn);
		
		close(conn);
		
		return list;
	}

	/** 회원 정보 조회 Service
	 * @param memberId
	 * @return member
	 * @throws Exception
	 */
	public Member selectOne(String memberId) throws Exception {
		
		Connection conn = getConnection();
		
		Member member = dao.selectOne(conn, memberId);
		
		close(conn);
		
		return member;
	}
	
}
