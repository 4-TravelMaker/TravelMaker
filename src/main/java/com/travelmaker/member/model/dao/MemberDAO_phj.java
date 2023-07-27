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

import com.travelmaker.board.model.vo.Reply;
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


	/** 비밀번호 조회 DAO 
	 * @param conn
	 * @param mem
	 * @return member
	 * @throws Exception
	 */
	public Member selectPw(Connection conn, Member mem) throws Exception {
		
		Member member  = null; 
		
		try {
			String sql = prop.getProperty("selectPw");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mem.getMemberId());
			pstmt.setInt(2, mem.getMemberQuestionCode());
			pstmt.setString(3, mem.getMemberAnswer());
			
			rs=pstmt.executeQuery();
			
			member = new Member();
			
			member.setMemberPw( rs.getString(1) );
			
		}finally {
			
			close(rs);
			close(pstmt);
		}
		
		return member;
	}
}
