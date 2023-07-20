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

import com.travelmaker.member.model.vo.Member;

public class MemberDAO_ash {

	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private Properties prop = null;
	
	public MemberDAO_ash() {
		try {
			prop = new Properties();
			
			String filePath = MemberDAO_ash.class.getResource("/com/travelmaker/sql/member/member-sql-ash.xml").getPath(); 
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	/** 회원 목록 조회 DAO
	 * @param conn
	 * @return list
	 * @throws Exception
	 */
	public List<Member> selectAll(Connection conn) throws Exception {
		
		List<Member> list = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("selectAll");
			
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				Member mem = new Member();
				
				mem.setMemberNo(rs.getInt(1));
				mem.setMemberId(rs.getString(2));
				mem.setMemberName(rs.getString(3));
				mem.setMemberNickname(rs.getString(4));
				mem.setMemberAddress(rs.getString(5));
				mem.setMemberTheme(rs.getString(6));
				mem.setEnrollDate(rs.getString(7));
				mem.setSecessionFlag(rs.getString(8));
				
				list.add(mem);
			}
			
		} finally {
			close(rs);
			close(stmt);
		}
		
		return list;
	}

	/** 회원 정보 조회 DAO
	 * @param conn
	 * @param memberId
	 * @return member
	 * @throws Exception
	 */
	public Member selectOne(Connection conn, String memberId) throws Exception {
		
		Member member = null;
		
		try {
			
			String sql = prop.getProperty("selectOne");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				member = new Member();
				
				member.setMemberNo(rs.getInt(1));
				member.setMemberId(rs.getString(2));
				member.setMemberName(rs.getString(3));
				member.setMemberNickname(rs.getString(4));
				member.setMemberAddress(rs.getString(5));
				member.setMemberTheme(rs.getString(6));
				member.setEnrollDate(rs.getString(7));
				member.setSecessionFlag(rs.getString(8));
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return member;
	}

}
