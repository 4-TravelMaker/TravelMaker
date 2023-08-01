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
import com.travelmaker.board.model.vo.Reply;
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
	public List<Board> selectOneOnOneInquiryList(Connection conn, Pagination pagination, int type) throws Exception {
		
		List<Board> boardList = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("selectOneOnOneInquiryList");
			
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
				board.setBoardContent( rs.getString("BOARD_CONTENT") );
				
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
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				detail = new BoardDetail();
				
				detail.setBoardNo( rs.getInt("BOARD_NO") );
				detail.setBoardTitle( rs.getString("BOARD_TITLE") );
				detail.setBoardContent( rs.getString("BOARD_CONTENT") );
				detail.setCreateDate( rs.getString("CREATE_DT") );
				detail.setMemberNickname( rs.getString("MEMBER_NICK") );
				detail.setMemberId( rs.getString("MEMBER_ID") );
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return detail;
	}

	/** 일대일 문의 답변 작성 DAO
	 * @param conn
	 * @param reply
	 * @return result
	 * @throws Exception
	 */
	public int insertOneOnOneInquiryReply(Connection conn, Reply reply) throws Exception {
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("insertOneOnOneInquiryReply");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, reply.getReplyContent());
			pstmt.setInt(2, reply.getBoardNo());
			pstmt.setInt(3, reply.getMemberNo());
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/** 일대일 문의 답변 목록 조회 DAO
	 * @param conn
	 * @param boardNo
	 * @return rList
	 * @throws Exception
	 */
	public List<Reply> selectReplyList(Connection conn, int boardNo) throws Exception {
		
		List<Reply> rList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("selectReplyList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Reply reply = new Reply();
				
				reply.setMemberNickName(rs.getString("MEMBER_NICK"));
				reply.setReplyContent(rs.getString("REPLY_CONTENT"));
				reply.setCreateDate(rs.getString("CREATE_DT"));
				reply.setReplyNo(rs.getInt("REPLY_NO"));
				
				rList.add(reply);
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return rList;
	}

	/** 일대일 문의 답변 삭제 DAO
	 * @param conn
	 * @param replyNo
	 * @return result
	 * @throws Exception
	 */
	public int deleteOneOnOneInquiryReply(Connection conn, int replyNo) throws Exception {
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("deleteOneOnOneInquiryReply");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, replyNo);
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/** 일대일 문의 답변 수정 DAO
	 * @param conn
	 * @param replyNo
	 * @param replyContent
	 * @return result
	 * @throws Exception
	 */
	public int updateOneOnOneInquiryReply(Connection conn, int replyNo, String replyContent) throws Exception {
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("updateOneOnOneInquiryReply");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, replyContent);
			pstmt.setInt(2, replyNo);
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/** 검색 조건에 만족하는 게시글 수 조회 DAO
	 * @param type
	 * @param conn
	 * @param condition
	 * @return listCount
	 * @throws Exception
	 */
	public int searchListCount(int type, Connection conn, String condition) throws Exception {
		
		int listCount = 0;
		
		try {
			
			String sql = prop.getProperty("searchListCount") + condition;
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);
			
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

	/** 검색 조건에 만족하는 게시글 목록 조회 DAO
	 * @param conn
	 * @param pagination
	 * @param type
	 * @param condition
	 * @return boardList
	 * @throws Exception
	 */
	public List<Board> searchOneOnOneInquiryBoardList(Connection conn, Pagination pagination, int type,
			String condition) throws Exception {
		
		List<Board> boardList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("searchOneOnOneInquiryBoardList1") + condition + prop.getProperty("searchOneOnOneInquiryBoardList2");
			
			pstmt = conn.prepareStatement(sql);
			
			int start = ( pagination.getCurrentPage() - 1 ) * pagination.getLimit() + 1;
			int end = start + pagination.getLimit() - 1;
			
			pstmt.setInt(1, type);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				Board board = new Board();
				
				board.setBoardNo( rs.getInt("BOARD_NO") );
				board.setBoardTitle( rs.getString("BOARD_TITLE") );
				board.setMemberId( rs.getString("MEMBER_ID") );
				board.setCreateDate( rs.getString("CREATE_DT") );
				board.setReadCount( rs.getInt("READ_COUNT") );
				
				boardList.add(board);
			}
			
		} finally {
	         close(rs);
	         close(pstmt);
		}
		
		return boardList;
	}

	/** 마이페이지 - 일대일 문의 게시판 전체 게시글 수 조회 DAO
	 * @param memberNo
	 * @param conn
	 * @param type
	 * @return listCount
	 * @throws Exception
	 */
	public int getMyPageListCount(int memberNo, Connection conn, int type) throws Exception {

		int listCount = 0;
		
		try {
			
			String sql = prop.getProperty("getMyPageListCount");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);
			pstmt.setInt(2, memberNo);

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

	/** 마이페이지 - 일대일 문의 게시판 일정한 범위의 목록 조회 DAO
	 * @param conn
	 * @param pagination
	 * @param type
	 * @param memberNo
	 * @return boardList
	 * @throws Exception
	 */
	public List<Board> selectMyPageOneOnOneInquiryList(Connection conn, Pagination pagination, int type, int memberNo) throws Exception {
		
		List<Board> boardList = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("selectMyOneOnOneInquiryList");
			
			int start = ( pagination.getCurrentPage() - 1 ) * pagination.getLimit() + 1;
			int end = start + pagination.getLimit() - 1;
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);
			pstmt.setInt(2, memberNo);
			pstmt.setInt(3, start);
			pstmt.setInt(4, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Board board = new Board();
				
				board.setBoardNo( rs.getInt("BOARD_NO") );
				board.setBoardTitle( rs.getString("BOARD_TITLE") );
				board.setMemberNo( rs.getInt("MEMBER_NO") );
				board.setMemberId( rs.getString("MEMBER_ID"));
				board.setCreateDate( rs.getString("CREATE_DT"));
				board.setReadCount( rs.getInt("READ_COUNT"));
				board.setBoardContent( rs.getString("BOARD_CONTENT") );
				
				boardList.add(board);
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return boardList;
	}

}
