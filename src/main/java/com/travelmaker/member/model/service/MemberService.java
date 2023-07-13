package com.travelmaker.member.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.travelmaker.member.model.dao.MemberDAO;
import com.travelmaker.member.model.vo.Member;

public class MemberService {

	private MemberDAO dao = new MemberDAO();
	
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
