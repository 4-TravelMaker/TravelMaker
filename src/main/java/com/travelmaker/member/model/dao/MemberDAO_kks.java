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

	/** 닉네임 중복 검사 DAO
	 * @param conn
	 * @param memberNickname
	 * @return result
	 * @throws Exception
	 */
	public int nicknameDupCheck(Connection conn, String memberNickname) throws Exception {
		
		int result = 0;
		
		try {
			
			String sql = prop.getProperty("nicknameDupCheck");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberNickname);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
