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
import com.travelmaker.board.model.vo.Pagination;
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
	public List<Board> searchList(Connection conn, String searchparam , Pagination pagination) throws Exception {

		List<Board> boardList = new ArrayList<Board>();
		
		try {
			
			String sql = prop.getProperty("searchList");
			
			int start = ( pagination.getCurrentPage() - 1 ) * pagination.getLimit() + 1;
			int end = start + pagination.getLimit() - 1;
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchparam);
			pstmt.setString(2, searchparam);
			pstmt.setString(3, searchparam);
			pstmt.setInt(4, start);
			pstmt.setInt(5, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Board board = new Board();
				
				board.setBoardNo(rs.getInt("BOARD_NO"));
				board.setBoardTitle(rs.getString("BOARD_TITLE"));
				board.setBoardContent(rs.getString("BOARD_CONTENT"));
				board.setReadCount(rs.getInt("READ_COUNT"));
				board.setCategoryName(rs.getString("CTGR_NM"));
				board.setBoardCode(rs.getInt("BOARD_CD"));
				board.setBoardCategory(rs.getInt("CTGR_NO"));
				board.setBoardImage(rs.getString("IMG_RENAME"));
				board.setImageLevel(rs.getInt("IMG_LEVEL"));
				
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
	public List<Board> travelInfos(Connection conn, String searchResult , Pagination pagination) throws Exception {
		
		List<Board> boardList = new ArrayList<Board>();
		
		try {
			String sql = prop.getProperty("travelInfos");
			
			int start = ( pagination.getCurrentPage() - 1 ) * pagination.getLimit() + 1;
			int end = start + pagination.getLimit() - 1;
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchResult);
			pstmt.setString(2, searchResult);
			pstmt.setString(3, searchResult);
			pstmt.setInt(4, start);
			pstmt.setInt(5, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Board board = new Board();
				
				board.setBoardNo(rs.getInt("BOARD_NO"));
				board.setBoardTitle(rs.getString("BOARD_TITLE"));
				board.setBoardContent(rs.getString("BOARD_CONTENT"));
				board.setReadCount(rs.getInt("READ_COUNT"));
				board.setCategoryName(rs.getString("CTGR_NM"));
				board.setBoardCode(rs.getInt("BOARD_CD"));
				board.setBoardCategory(rs.getInt("CTGR_NO"));
				board.setBoardImage(rs.getString("IMG_RENAME"));
				board.setImageLevel(rs.getInt("IMG_LEVEL"));
				
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
	public List<Board> travelReview(Connection conn, String searchResult , Pagination pagination ) throws Exception {
		
		List<Board> boardList = new ArrayList<Board>();
			
			try {
				String sql = prop.getProperty("travelReview");
				
				int start = ( pagination.getCurrentPage() - 1 ) * pagination.getLimit() + 1;
				int end = start + pagination.getLimit() - 1;
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, searchResult);
				pstmt.setString(2, searchResult);
				pstmt.setString(3, searchResult);
				pstmt.setInt(4, start);
				pstmt.setInt(5, end);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					
					Board board = new Board();
					
					board.setBoardNo(rs.getInt("BOARD_NO"));
					board.setBoardTitle(rs.getString("BOARD_TITLE"));
					board.setBoardContent(rs.getString("BOARD_CONTENT"));
					board.setReadCount(rs.getInt("READ_COUNT"));
					board.setCategoryName(rs.getString("CTGR_NM"));
					board.setBoardCode(rs.getInt("BOARD_CD"));
					board.setBoardCategory(rs.getInt("CTGR_NO"));
					board.setBoardImage(rs.getString("IMG_RENAME"));
					board.setImageLevel(rs.getInt("IMG_LEVEL"));
					
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
	public List<Board> travelAll(Connection conn, String searchResult , Pagination pagination) throws Exception{
		
		List<Board> boardList = new ArrayList<Board>();
		
		try {
			String sql = prop.getProperty("travelAll");
			
			int start = ( pagination.getCurrentPage() - 1 ) * pagination.getLimit() + 1;
			int end = start + pagination.getLimit() - 1;
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchResult);
			pstmt.setString(2, searchResult);
			pstmt.setString(3, searchResult);
			pstmt.setInt(4, start);
			pstmt.setInt(5, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Board board = new Board();
				
				board.setBoardNo(rs.getInt("BOARD_NO"));
				board.setBoardTitle(rs.getString("BOARD_TITLE"));
				board.setBoardContent(rs.getString("BOARD_CONTENT"));
				board.setReadCount(rs.getInt("READ_COUNT"));
				board.setCategoryName(rs.getString("CTGR_NM"));
				board.setBoardCode(rs.getInt("BOARD_CD"));
				board.setBoardCategory(rs.getInt("CTGR_NO"));
				board.setBoardImage(rs.getString("IMG_RENAME"));
				board.setImageLevel(rs.getInt("IMG_LEVEL"));
				
				boardList.add(board);
				
			}
			
			
		} finally {
			
			close(rs);
			close(pstmt);
			
		}
		
		
		return boardList;
	}

	/** 검색어 카운트 DAO
	 * @param conn
	 * @param searchparam
	 * @return listCount
	 * @throws Exception
	 */
	public int searchListCount(Connection conn, String searchparam) throws Exception {
		
		int listCount = 0;
		
		try {
			
			String sql = prop.getProperty("getListCount");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchparam);
			pstmt.setString(2, searchparam);
			pstmt.setString(3, searchparam);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				listCount = rs.getInt(1);
			}
			
		} finally {
			
			close(rs);
			close(pstmt);
			
		}
		
		
		
		
		return listCount;
	}

	
	/** 여행 카운트 DAO
	 * @param conn
	 * @param searchparam
	 * @return listCount
	 * @throws Exception
	 */
	public int searchListCount1(Connection conn, String searchparam) throws Exception {
		
		int listCount = 0;
		
		try {
			
			String sql = prop.getProperty("getListCount1");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchparam);
			pstmt.setString(2, searchparam);
			pstmt.setString(3, searchparam);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				listCount = rs.getInt(1);
			}
			
		} finally {
			
			close(rs);
			close(pstmt);
			
		}
		
		
		return listCount;
		
	}

	/** 여행 리뷰 카운트 DAO
	 * @param conn
	 * @param searchparam
	 * @return listCount
	 * @throws Exception
	 */
	public int searchListCount2(Connection conn, String searchparam) throws Exception {
		int listCount = 0;
		
		try {
			
			String sql = prop.getProperty("getListCount2");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchparam);
			pstmt.setString(2, searchparam);
			pstmt.setString(3, searchparam);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				listCount = rs.getInt(1);
			}
			
		} finally {
			
			close(rs);
			close(pstmt);
			
		}
		
		
		return listCount;
	}

	/** 전체검색 카운트 DAO
	 * @param conn
	 * @param searchparam
	 * @return listCount
	 * @throws Exception
	 */
	public int searchListCount3(Connection conn, String searchparam) throws Exception {
		int listCount = 0;
		
		try {
			
			String sql = prop.getProperty("getListCount2");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchparam);
			pstmt.setString(2, searchparam);
			pstmt.setString(3, searchparam);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				listCount = rs.getInt(1);
			}
			
		} finally {
			
			close(rs);
			close(pstmt);
			
		}
		
		
		return listCount;
	}

	
	
	
	
	
}
