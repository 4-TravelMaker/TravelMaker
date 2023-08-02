package com.travelmaker.member.model.service;

import com.travelmaker.member.model.dao.MemberDAO_kks;
import com.travelmaker.member.model.vo.Member;

import java.sql.Connection;

import static com.travelmaker.common.JDBCTemplate.*;

public class MemberService_kks {

	private MemberDAO_kks dao = new MemberDAO_kks(); 
	
	/** 오토 로그인(임시) Service
	 * @param memberNo
	 * @return loginMember
	 * @throws Exception
	 */
	public Member autoLogin(int memberNo) throws Exception {
		
		Connection conn = getConnection();
		
		Member loginMember = dao.autoLogin(conn, memberNo);
		
		close(conn);
		
		return loginMember;
	}

	/** 회원 정보 수정 Service
	 * @param mem
	 * @return result
	 * @throws Exception
	 */
	public int changeMyInfo(Member mem) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.changeMyInfo(conn, mem);
		
		if(result > 0)	commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 회원 탈퇴 Service
	 * @param memberNo
	 * @return result
	 * @throws Exception 
	 */
	public int memberSecession(int memberNo) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.memberSecession(conn, memberNo);
		
		if(result > 0)	commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}

}
