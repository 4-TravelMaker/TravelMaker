package com.travelmaker.member.model.service;

import com.travelmaker.member.model.dao.MemberDAO_kks;
import com.travelmaker.member.model.vo.Member;

import java.sql.Connection;

import static com.travelmaker.common.JDBCTemplate.*;

public class MemberService_kks {

	private MemberDAO_kks dao = new MemberDAO_kks(); 
	
	public Member autoLogin(int memberNo) throws Exception {
		
		Connection conn = getConnection();
		
		Member loginMember = dao.autoLogin(conn, memberNo);
		
		close(conn);
		
		return loginMember;
	}

}
