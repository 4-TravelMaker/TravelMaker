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

	/** 닉네임 중복 검사 Service
	 * @param memberNickname
	 * @return result
	 * @throws Exception
	 */
	public int nicknameDupCheck(String memberNickname) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.nicknameDupCheck(conn, memberNickname);
		
		close(conn);
		
		return result;
	}

}
