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

public class MemberDAO_phj {
	
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private Properties prop = null;
	
	
	public MemberDAO_phj() {
		try {
			prop = new Properties();
			
			String filePath = MemberDAO_phj.class.getResource("/com/travelmaker/sql/board/board-sql-phj.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	/** 댓글 목록 조회 DAO
	 * @param conn
	 * @param inputId
	 * @return rList
	 * @throws Exception
	 */
	public List<Reply> selectReplyList(Connection conn, String inputId) throws Exception{
		
		List<Reply> rList = new ArrayList<Reply>();
		
		try {
			String sql = prop.getProperty("selectReplyList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, inputId);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Reply reply = new Reply();
				
				reply.setMemberID( rs.getString("MEMBER_ID"));
				reply.setReplyContent( rs.getString("REPLY_CONTENT"));
				reply.setCreateDate( rs.getString("CREATE_DT"));
				
				rList.add(reply);
			}
			
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return rList;
	}

}
