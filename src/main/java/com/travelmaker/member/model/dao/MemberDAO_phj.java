package com.travelmaker.member.model.dao;

import static com.travelmaker.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

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
			System.out.println("sql : " + sql);
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
}
