package com.travelmaker.member.model.dao;

import static com.travelmaker.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import com.travelmaker.member.model.vo.Member;

public class MemberDAO_lhk {
	
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private Properties prop = null;
	
	public MemberDAO_lhk() {
		try {
			prop = new Properties();
			
			String filePath = MemberDAO_lhk.class.getResource("/com/travelmaker/sql/member/member-sql-lhk.xml").getPath(); 
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	

	/** 회원가입 DAO
	 * @param conn
	 * @param mem
	 * @return result
	 * @throws Exception
	 */
	public int signUp(Connection conn , Member mem) throws Exception{
		
		int result = 0; // 결과 저장용 변수
		
		try {
			
			String sql = prop.getProperty("signUp");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,mem.getMemberId());
			pstmt.setString(2,mem.getMemberPw());
			pstmt.setString(3,mem.getMemberName());
			pstmt.setString(4,mem.getMemberNickname());
			pstmt.setString(5,mem.getProfileImage());
			pstmt.setString(6,mem.getMemberAddress());
			pstmt.setString(7,mem.getMemberTheme());
			pstmt.setInt(8,mem.getMemberQuestionCode());
			pstmt.setString(9,mem.getMemberAnswer());
			
			result = pstmt.executeUpdate();
			
		} finally {
			
			close(pstmt);
		}
		
		
		
		
		// 결과 반환
		return result;
	}






	/** 아이디 중복 검사 DAO
	 * @param conn
	 * @param memberId
	 * @return result
	 * @throws Exception
	 */
	public int idDupcheck(Connection conn, String memberId) throws Exception {
		int result = 0;
		
		try {
			String sql = prop.getProperty("idDupcheck");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				result = rs.getInt(1);
			}
			
		} finally {
			
			close(rs);
			close(pstmt);
			
		}
		
		
		
		return result;
	}






	/** 닉네임 중복검사 DAO
	 * @param conn
	 * @param memberNickname
	 * @return result
	 * @throws Exception
	 */
	public int nicknameDupcheck(Connection conn, String memberNickname) throws Exception {
		int result = 0;
		
		try {
			
			String sql = prop.getProperty("nicknameDupcheck");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberNickname);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				result = rs.getInt(1);
			}
			
			
			
		} finally {
			
			close(rs);
			close(pstmt);
			
		}
		
		
		return result;
	}






	/** 아이디 찾기 DAO
	 * @param conn
	 * @param mem
	 * @return checkId
	 * @throws Exception
	 */
	public String selectCheckId(Connection conn, Member mem) throws Exception {
		
		String checkId = null;
		
		try {
			String sql = prop.getProperty("selectCheckId");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mem.getMemberName());
			pstmt.setInt(2, mem.getMemberQuestionCode());
			pstmt.setString(3, mem.getMemberAnswer());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				checkId = rs.getString(1);
			}
			
		} finally {
			
			close(rs);
			close(pstmt);
		}
		
		
		return checkId;
	}

}
