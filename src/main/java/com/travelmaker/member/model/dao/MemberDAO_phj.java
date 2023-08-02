package com.travelmaker.member.model.dao;

import static com.travelmaker.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.travelmaker.board.model.vo.Board;
import com.travelmaker.member.model.vo.Member;

public class MemberDAO_phj {
	
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private Properties prop = null;
	
	
	public MemberDAO_phj() {
		try {
			prop = new Properties();
			
			String filePath = MemberDAO_phj.class.getResource("/com/travelmaker/sql/member/member-sql-phj.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
	}


	/** 비밀번호 찾기 DAO
	 * @param conn
	 * @param inputId
	 * @return member
	 * @throws Exception
	 */
	public Member selectPw(Connection conn, String inputId) throws Exception {
		
		Member member = null;
		
		try {
			String sql = prop.getProperty("selectPw");
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, inputId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				member = new Member();
				
				member.setMemberPw(rs.getString("MEMBER_PW") );
				member.setMemberQuestionCode(rs.getInt("MEMBER_Q_CD") );
				member.setMemberAnswer(rs.getString("MEMBER_A") );
			}
			
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return member;
	}


	
	
	/** 비밀번호 수정 DAO
	 * @param conn
	 * @param id
	 * @param pw
	 * @return result
	 * @throws Exception
	 */
	public int updatePw(Connection conn, String id, String pw) throws Exception{
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("updatePw");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, pw);
			pstmt.setString(2, id);
			
			result = pstmt.executeUpdate();
			
			
		}finally {
			close(pstmt);
		}
		
		return result;
	}


	/** 회원 게시글 목록 조회 service
	 * @param conn
	 * @param memberNo
	 * @return list
	 * @throws Exception
	 */
	public List<Board> selectBoard(Connection conn, int memberNo) throws Exception {
		
		List<Board> list = new ArrayList<Board>();
		
		try {
			String sql = prop.getProperty("selectBoard");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				
				Board bo = new Board();
				
				bo.setBoardNo( rs.getInt(1));
				bo.setBoardTitle( rs.getString(2));
				bo.setBoardContent( rs.getString(3));
				bo.setMemberNo(rs.getInt(4));
				bo.setBoardCode( rs.getInt(5));
				
				list.add(bo);
			}
			
			
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}


	/** 게시글 삭제 DAO
	 * @param conn
	 * @param boardNo
	 * @return result
	 * @throws Exception
	 */
	public int deleteBoard(Connection conn, int boardNo) throws Exception {
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("deleteBoard");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNo);
			
			result = pstmt.executeUpdate();
			
			
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}
}
