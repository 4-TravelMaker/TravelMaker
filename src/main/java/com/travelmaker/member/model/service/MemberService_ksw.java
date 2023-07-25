package com.travelmaker.member.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;

import com.travelmaker.member.model.dao.MemberDAO_ksw;
import com.travelmaker.member.model.vo.Member;

public class MemberService_ksw {
	
	private MemberDAO_ksw dao = new MemberDAO_ksw();

	/** 로그인 기능 service
	 * @param mem
	 * @return loginMember
	 * @throws Exception
	 */
	public Member login(Member mem) throws Exception{
		
		Connection conn = getConnection();
		
		Member loginMember = dao.login(conn,mem);
		
		close(conn);

		return loginMember;
	}

}
