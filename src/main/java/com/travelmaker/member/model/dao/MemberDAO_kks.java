package com.travelmaker.member.model.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import com.travelmaker.member.model.vo.Member;

import static com.travelmaker.common.JDBCTemplate.*;

public class MemberDAO_kks {
	
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private Properties prop;

	public MemberDAO_kks() {
		
		try {
			prop = new Properties();
			
			String filePath = MemberDAO_kks.class.getResource("/com/travelmaker/sql/member/member-sql-kks.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	/** 오토 로그인(임시) DAO
	 * @param conn
	 * @param memberNo
	 * @return loginMember
	 * @throws Exception
	 */
	public Member autoLogin(Connection conn, int memberNo) throws Exception {
		
		Member loginMember = null;
		
		try {
			
			String sql = prop.getProperty("login");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				loginMember = new Member();
				
				loginMember.setMemberNo(           rs.getInt("MEMBER_NO")       );
	            loginMember.setMemberId(           rs.getString("MEMBER_ID") );
	            loginMember.setMemberName(         rs.getString("MEMBER_NM") );
	            loginMember.setMemberNickname(     rs.getString("MEMBER_NICK")  );
	            loginMember.setProfileImage(       rs.getString("PROFILE_IMG")   );
	            loginMember.setMemberAddress(  	   rs.getString("MEMBER_ADDR")  );
	            loginMember.setMemberTheme(        rs.getString("MEMBER_THM") );
	            loginMember.setMemberQuestionCode( rs.getInt("MEMBER_Q_CD") );
	            loginMember.setMemberAnswer( 	   rs.getString("MEMBER_A") );
	            loginMember.setEnrollDate(     	   rs.getString("ENROLL_DT")    );
				
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return loginMember;
	}

	/** 회원 정보 수정 DAO
	 * @param conn
	 * @param mem
	 * @return result
	 * @throws Exception
	 */
	public int changeMyInfo(Connection conn, Member mem) throws Exception {
		
		int result = 0;
		
		try {
			
			String sql = prop.getProperty("changeMyInfo");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mem.getMemberPw());
			pstmt.setString(2, mem.getMemberNickname());
			pstmt.setString(3, mem.getMemberAddress());
			pstmt.setString(4, mem.getMemberTheme());
			pstmt.setInt(5, mem.getMemberQuestionCode());
			pstmt.setString(6, mem.getMemberAnswer());
			pstmt.setString(7, mem.getProfileImage());
			pstmt.setInt(8, mem.getMemberNo());
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/** 회원 비밀번호 일치 여부 체크 DAO
	 * @param conn
	 * @param inputPw
	 * @return result
	 * @throws Exception
	 */
	public int memberPwCheck(Connection conn, String inputPw, int memberNo) throws Exception {
		
		int result = 0;
		
		try {
			
			String sql = prop.getProperty("memberPwCheck");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, inputPw);
			pstmt.setInt(2, memberNo);
			
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

	/** 회원 탈퇴 DAO
	 * @param conn
	 * @param memberNo
	 * @return result
	 * @throws Exception
	 */
	public int memberSecession(Connection conn, int memberNo) throws Exception {
		
		int result = 0;
		
		try {
			
			String sql = prop.getProperty("memberSecession");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
