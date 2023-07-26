package com.travelmaker.board.model.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.board.model.vo.Pagination;
import com.travelmaker.member.model.dao.MemberDAO_ash;

import static com.travelmaker.common.JDBCTemplate.*;
public class BoardDAO_ash {
	
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private Properties prop = null;
	
	public BoardDAO_ash() {
		try {
			prop = new Properties();
			
			String filePath = MemberDAO_ash.class.getResource("/com/travelmaker/sql/board/board-sql-ash.xml").getPath(); 
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	/** 일대일 문의 게시판 전체 게시글 수 조회 DAO
	 * @param conn
	 * @param type
	 * @return listCount
	 * @throws Exception
	 */
	public int getListCount(Connection conn, int type) throws Exception {
		
		int listCount = 0;
		
		try {
			
			String sql = prop.getProperty("getListCount");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);

			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				listCount = rs.getInt(1);
			}
			
		} finally{
			close(rs);
			close(pstmt);
		}
		
		return listCount;
	}

	/** 일대일 문의 게시판 일정한 범위의 목록 조회 DAO
	 * @param conn
	 * @param pagination
	 * @param type
	 * @return boardList
	 * @throws Exception
	 */
	public List<Board> selectBoardList(Connection conn, Pagination pagination, int type) throws Exception {
		
		List<Board> boardList = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("selectBoardList");
			
			int start = ( pagination.getCurrentPage() - 1 ) * pagination.getLimit() + 1;
			int end = start + pagination.getLimit() - 1;
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Board board = new Board();
				
				board.setBoardNo( rs.getInt("BOARD_NO") );
				board.setBoardTitle( rs.getString("BOARD_TITLE") );
				board.setMemberId( rs.getString("MEMBER_ID") );
				board.setCreateDate( rs.getString("CREATE_DT"));
				board.setReadCount( rs.getInt("READ_COUNT"));
				
				boardList.add(board);
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return boardList;
	}

	/** 일대일 문의 게시글 상세 조회 DAO
	 * @param conn
	 * @param boardNo
	 * @return detail
	 * @throws Exception
	 */
	public BoardDetail selectOneOnOneInquiryDetail(Connection conn, int boardNo) throws Exception {
		
		BoardDetail detail = null;
		
		try {
			String sql = prop.getProperty("selectOneOnOneInquiryDetail");
			
			
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return detail;
	}

}
