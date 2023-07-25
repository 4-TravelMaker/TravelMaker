package com.travelmaker.member.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;

import com.travelmaker.member.model.dao.MemberDAO_lhk;
import com.travelmaker.member.model.vo.Member;

public class MemberService_lhk {
	
	MemberDAO_lhk dao = new MemberDAO_lhk();

	/** 회원가입 Service
	 * @param mem
	 * @return result
	 * @throws Exception
	 */
	public int signUp(Member mem) throws Exception {
		
		
		Connection conn = getConnection();
		
		
		int result = dao.signUp(conn, mem);
		
		
		if (result > 0) commit(conn);
		else rollback(conn);
		
		System.out.println(result);
		
		
		close(conn);
		
		
		
		return result;
	}

}
