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

import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.board.model.vo.Pagination;
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


	/** 비밀번호 찾기 DAO
	 * @param conn
	 * @param inputId
	 * @return member
	 * @throws Exception
	 */
	public Member selectPw(Connection conn, String inputId) throws Exception {
		
		Member member = null;
		
		try {
			String sql = prop.getProperty("selectPw");
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, inputId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				member = new Member();
				
				member.setMemberPw(rs.getString("MEMBER_PW") );
				member.setMemberQuestionCode(rs.getInt("MEMBER_Q_CD") );
				member.setMemberAnswer(rs.getString("MEMBER_A") );
			}
			
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return member;
	}


	
	
	/** 비밀번호 수정 DAO
	 * @param conn
	 * @param id
	 * @param pw
	 * @return result
	 * @throws Exception
	 */
	public int updatePw(Connection conn, String id, String pw) throws Exception{
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("updatePw");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, pw);
			pstmt.setString(2, id);
			
			result = pstmt.executeUpdate();
			
			
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	/** 게시글 수 조회 DAO
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
			
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return listCount;
	}


	/** 게시글 목록 조회 DAO
	 * @param conn
	 * @param pagination
	 * @param type
	 * @param memberNo
	 * @return boardList
	 */
	public List<Board> selectBoard(Connection conn, Pagination pagination, int memberNo) throws Exception {
		
		List<Board> boardList = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("selectBoardList");
			
			int start = ( pagination.getCurrentPage() - 1 ) * pagination.getLimit() + 1;
			int end = start + pagination.getLimit() - 1;
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
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
		}finally {
			close(rs);
			close(pstmt);
		}
		
		System.out.println("리스트 : " + boardList);
		
		return boardList;
	}

	

	/** 게시글 상세조회 service
	 * @param conn
	 * @param boardNo
	 * @return detail
	 * @throws Exception
	 */
	public BoardDetail selectBoardDetail(Connection conn, int boardNo) throws Exception{
		
		BoardDetail detail = null;
		
		try {
			String sql = prop.getProperty("selectBoardDetail");
			
			
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
				detail.setMemberNo( rs.getInt("MEMBER_NO"));
			}
			
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return detail;
	}


	/** 게시글 삭제 DAO
	 * @param conn
	 * @param boardNo
	 * @return result 
	 * @throws Exception
	 */
	public int deleteBoard(Connection conn, int boardNo) throws Exception {
		
		int result1 = 0;
		
		try {
			String sql = prop.getProperty("deleteBoard");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNo);
			
			result1 = pstmt.executeUpdate();
			
		}finally {
			close(pstmt);
		}
		
		return result1;
		
	}


	/** 게시글 수정 DAO
	 * @param conn
	 * @param boardNo
	 * @param boardTitle
	 * @param boardContent
	 * @return result
	 * @throws Exception
	 */
	public int updateBoard(Connection conn, int boardNo, String boardTitle, String boardContent) throws Exception {
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("updateBoard");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, boardTitle);
			pstmt.setString(2, boardContent);
			pstmt.setInt(3, boardNo);
			
			result = pstmt.executeUpdate();
			
		}finally {
			close(pstmt);
		}
		return result;
	}


	public List<Reply> selectReplyList(Connection conn, int boardNo) throws Exception {
		
		List<Reply> rList = new ArrayList<>();
		
		try {
				String sql = prop.getProperty("selectReply");
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, boardNo);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					
					Reply reply = new Reply();
					
					reply.setReplyNo( rs.getInt("REPLY_NO") );
					reply.setReplyContent(rs.getString("REPLY_CONTENT"));
					reply.setMemberNo(rs.getInt("MEMBER_NO"));
					reply.setMemberNickName(rs.getString("MEMBER_NICK"));
					reply.setCreateDate(rs.getString("CREATE_DT"));
					
					rList.add(reply);
				}
				
			}finally {
				
				close(pstmt);
				close(rs);
			}
		
		return rList;
	}
}
