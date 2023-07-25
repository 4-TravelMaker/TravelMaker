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

	/** 아이디 중복 검사 Service
	 * @param memberId
	 * @return result
	 * @throws Exception
	 */
	public int idDupcheck(String memberId) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.idDupcheck(conn,memberId);
		
		close(conn);
		
		return result;
	}

	/** 닉네임 중복 검사 Service
	 * @param memberNickname
	 * @return result
	 * @throws Exception
	 */
	public int nicknameDupcheck(String memberNickname) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.nicknameDupcheck(conn , memberNickname);
		
		close(conn);
		
		return result;
	}

}
