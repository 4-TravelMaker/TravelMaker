package com.travelmaker.member.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.travelmaker.member.model.dao.MemberDAO_ash;
import com.travelmaker.member.model.vo.Member;

public class MemberService_ash {

	private MemberDAO_ash dao = new MemberDAO_ash();
	
	/** 회원 목록 조회
	 * @return memberList
	 * @throws Exception
	 */
	public List<Member> selectAll() throws Exception{
		
		Connection conn = getConnection();
		
		List<Member> memberList = dao.selectAll(conn);
		
		close(conn);
		
		return memberList;
	}

}
