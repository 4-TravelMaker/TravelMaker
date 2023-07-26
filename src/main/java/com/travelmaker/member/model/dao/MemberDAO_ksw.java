package com.travelmaker.member.model.dao;

import static com.travelmaker.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import com.travelmaker.member.model.vo.Member;

public class MemberDAO_ksw {
	
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Properties prop;

	public MemberDAO_ksw() {
		try {
			prop= new Properties();
			
			String filePath = MemberDAO_ksw.class.getResource("/com/travelmaker/sql/member/member-sql-ksw.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
	}
	
	/** 로그인 DAO
	 * @param conn
	 * @param mem
	 * @return loginMember
	 * @throws Exception
	 */
	
	public Member login(Connection conn, Member mem)throws Exception {
		Member loginMember = null;
		
		try {
			
			String sql = prop.getProperty("login");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mem.getMemberId());
			pstmt.setString(2, mem.getMemberPw());
		
			rs= pstmt.executeQuery();
			if(rs.next()) {
				loginMember = new Member();
				
				loginMember.setMemberNo(rs.getInt("MEMBER_NO"));
				loginMember.setMemberId(rs.getString("MEMBER_ID"));
				loginMember.setMemberPw(rs.getString("MEMBER_PW"));
				loginMember.setMemberName(rs.getString("MEMBER_NM"));
				loginMember.setMemberNickname(rs.getString("MEMBER_NICK"));
				loginMember.setProfileImage(rs.getString("PROFILE_IMG"));
				loginMember.setMemberAddress(rs.getString("MEMBER_ADDR"));
				loginMember.setMemberTheme(rs.getString("MEMBER_THM"));
				loginMember.setMemberQuestionCode(rs.getInt("MEMBER_Q_CD"));
				loginMember.setMemberAnswer(rs.getString("MEMBER_A"));
				loginMember.setEnrollDate(rs.getString("ENROLL_DT"));
				loginMember.setSecessionFlag(rs.getString("SECESSION_FL"));
				loginMember.setAdminFlag(rs.getString("ADMIN_FL"));
			}
		
		
		}finally {
			
			close(rs);
			close(pstmt);
		}
		
		
		return loginMember;
	}

}
