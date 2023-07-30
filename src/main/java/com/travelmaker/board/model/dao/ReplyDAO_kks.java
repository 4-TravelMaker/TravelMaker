package com.travelmaker.board.model.dao;

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

public class ReplyDAO_kks {

	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Properties prop;
	
	public ReplyDAO_kks() {
		
		try {
			
			prop = new Properties();
			
			String filePath = BoardDAO_kks.class.getResource("/com/travelmaker/sql/reply/reply-sql-kks.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	/** 댓글 목록 DAO
	 * @param conn
	 * @param boardNo
	 * @return replyList
	 * @throws Exception
	 */
	public List<Reply> selectReplyList(Connection conn, int boardNo) throws Exception {
		
		List<Reply> replyList = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("selectReplyList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Reply reply = new Reply();
				
				reply.setReplyNo( rs.getInt(1) );
				reply.setReplyContent( rs.getString(2) );
				reply.setCreateDate( rs.getString(3) );
				reply.setBoardNo( rs.getInt(4) );
				reply.setMemberNo( rs.getInt(5) );
				reply.setMemberNickName( rs.getString(6) );
				reply.setProfileImage( rs.getString(7) );
				
				replyList.add(reply);
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return replyList;
	}

}
