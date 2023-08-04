package com.travelmaker.member.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import com.travelmaker.board.model.vo.Board;
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

	/** 회원 탈퇴 처리 Service
	 * @param memberNo
	 * @return result
	 * @throws Exception
	 */
	public int memberSecession(int memberNo) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.memberSecession(conn, memberNo);
		
		if(result > 0) commit(conn);
		else		   rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 마이페이지 - 북마크 리스트 조회 Service
	 * @param memberNo
	 * @return bookMarkList
	 * @throws Exception
	 */
	public List<Board> selectBookmarkList(int memberNo) throws Exception {
		
		Connection conn = getConnection();
		
		List<Board> bookMarkList = dao.selectBookmarkList(conn, memberNo);
		
		close(conn);
		
		return bookMarkList;
	}
	
}
