package com.travelmaker.board.model.dao;


import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import static com.travelmaker.common.JDBCTemplate.*;

import com.travelmaker.board.model.vo.Board;
import com.travelmaker.member.model.dao.MemberDAO_ash;

public class BoardDAO_lhk {
	
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private Properties prop = null;
	
	public BoardDAO_lhk() {
		try {
			prop = new Properties();
			
			String filePath = BoardDAO_lhk.class.getResource("/com/travelmaker/sql/board/board-sql-lhk.xml").getPath(); 
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	/** 검색결과 DAO
	 * @param conn
	 * @param searchparam
	 * @return boardList
	 * @throws Exception
	 */
	public List<Board> searchList(Connection conn, String searchparam) throws Exception {

		List<Board> boardList = new ArrayList<Board>();
		
		try {
			
			String sql = prop.getProperty("searchList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchparam);
			pstmt.setString(2, searchparam);
			pstmt.setString(3, searchparam);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Board board = new Board();
				
				board.setBoardNo(rs.getInt(1));
				board.setBoardTitle(rs.getString(2));
				board.setBoardContent(rs.getString(3));
				board.setReadCount(rs.getInt(4));
				board.setCategoryName(rs.getString(5));
				board.setBoardCode(rs.getInt(6));
				board.setBoardCategory(rs.getInt(7));
				board.setBoardImage(rs.getString(8));
				board.setImageLevel(rs.getInt(9));
				
				boardList.add(board);
				
			}
			
		} finally {
			
			close(rs);
			close(pstmt);
			
			
		}
		
		
		
		return boardList;
	}

	/** 여행정보 DAO
	 * @param conn
	 * @param searchResult
	 * @return boardList
	 * @throws Exception
	 */
	public List<Board> travelInfos(Connection conn, String searchResult) throws Exception {
		
		List<Board> boardList = new ArrayList<Board>();
		
		try {
			String sql = prop.getProperty("travelInfos");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchResult);
			pstmt.setString(2, searchResult);
			pstmt.setString(3, searchResult);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Board board = new Board();
				
				board.setBoardNo(rs.getInt(1));
				board.setBoardTitle(rs.getString(2));
				board.setBoardContent(rs.getString(3));
				board.setReadCount(rs.getInt(4));
				board.setCategoryName(rs.getString(5));
				board.setBoardCode(rs.getInt(6));
				board.setBoardCategory(rs.getInt(7));
				board.setBoardImage(rs.getString(8));
				board.setImageLevel(rs.getInt(9));
				
				boardList.add(board);
				
			}
			
			
			
		} finally {
			
			close(rs);
			close(pstmt);
			
		}
		
		
		
		
		
		return boardList;
	}

	/** 여행리뷰 DAO
	 * @param conn
	 * @param searchResult
	 * @return boardList
	 * @throws Exception
	 */
	public List<Board> travelReview(Connection conn, String searchResult) throws Exception {
		
		List<Board> boardList = new ArrayList<Board>();
			
			try {
				String sql = prop.getProperty("travelReview");
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, searchResult);
				pstmt.setString(2, searchResult);
				pstmt.setString(3, searchResult);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					
					Board board = new Board();
					
					board.setBoardNo(rs.getInt(1));
					board.setBoardTitle(rs.getString(2));
					board.setBoardContent(rs.getString(3));
					board.setReadCount(rs.getInt(4));
					board.setCategoryName(rs.getString(5));
					board.setBoardCode(rs.getInt(6));
					board.setBoardCategory(rs.getInt(7));
					board.setBoardImage(rs.getString(8));
					board.setImageLevel(rs.getInt(9));
					
					boardList.add(board);
					
				}
				
				
			} finally {
				
				close(rs);
				close(pstmt);
				
			}
			
			
			return boardList;
	}

	
	/** 전체 DAO
	 * @param conn
	 * @param searchResult
	 * @return boardList
	 * @throws Exception
	 */
	public List<Board> travelAll(Connection conn, String searchResult) throws Exception{
		
		List<Board> boardList = new ArrayList<Board>();
		
		try {
			String sql = prop.getProperty("travelAll");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchResult);
			pstmt.setString(2, searchResult);
			pstmt.setString(3, searchResult);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Board board = new Board();
				
				board.setBoardNo(rs.getInt(1));
				board.setBoardTitle(rs.getString(2));
				board.setBoardContent(rs.getString(3));
				board.setReadCount(rs.getInt(4));
				board.setCategoryName(rs.getString(5));
				board.setBoardCode(rs.getInt(6));
				board.setBoardCategory(rs.getInt(7));
				board.setBoardImage(rs.getString(8));
				board.setImageLevel(rs.getInt(9));
				
				boardList.add(board);
				
			}
			
			
		} finally {
			
			close(rs);
			close(pstmt);
			
		}
		
		
		return boardList;
	}

	
	
	
	
	
}
