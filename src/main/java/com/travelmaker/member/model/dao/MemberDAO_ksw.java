package com.travelmaker.member.model.dao;

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
	 */
	
	public Member login(Connection conn, Member mem) {
		
		
		
		
		
		
		return null;
	}

}
