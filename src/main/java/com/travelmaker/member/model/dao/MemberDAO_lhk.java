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
			
			String filePath = MemberDAO_ash.class.getResource("/com/travelmaker/sql/member/member-sql-lhk.xml").getPath(); 
			
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
			pstmt.setInt(7,mem.getMemberQuestion());
			pstmt.setString(8,mem.getMemberAnswer());
			
			result = pstmt.executeUpdate();
			
			
			System.out.println(result);
			
		} finally {
			
			close(pstmt);
		}
		
		
		
		
		// 결과 반환
		return result;
	}

}
