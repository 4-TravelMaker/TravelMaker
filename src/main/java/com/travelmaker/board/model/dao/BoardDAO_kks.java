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

import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.board.model.vo.BoardImage;
import com.travelmaker.board.model.vo.BoardLike;
import com.travelmaker.board.model.vo.Pagination;


/**
 * @author KWANG8
 *
 */
public class BoardDAO_kks {

	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Properties prop;
	
	public BoardDAO_kks() {
		
		try {
			
			prop = new Properties();
			
			String filePath = BoardDAO_kks.class.getResource("/com/travelmaker/sql/board/board-sql-kks.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	/** 게시판 이름 조회 DAO
	 * @param conn
	 * @param type
	 * @return boardName
	 * @throws Exception
	 */
	public String selectBoardName(Connection conn, int type) throws Exception {
		
		String boardName = null;
		
		try {
			
			String sql = prop.getProperty("selectBoardName");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				boardName = rs.getString(1);
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return boardName;
	}

	/** 특정 게시판 전체 게시글 수 조회 DAO
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
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return listCount;
	}

	/** 특정 게시판에서 일정한 범위의 목록 조회 DAO
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
			
			// BETWEEN 구문에 들어갈 범위 계산
			int start = ( pagination.getCurrentPage() - 1 ) * pagination.getLimit() + 1;
			int end = start + pagination.getLimit() - 1;
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Board board = new Board();
				
				board.setBoardNo     ( rs.getInt("BOARD_NO") );
				board.setBoardTitle  ( rs.getString("BOARD_TITLE") );
				board.setMemberId    ( rs.getString("MEMBER_NICK") );
				board.setCreateDate  ( rs.getString("CREATE_DT") );
				board.setReadCount   ( rs.getInt("READ_COUNT") );
				board.setThumbnail   ( rs.getString("IMG_RENAME") );
				board.setProfileImage( rs.getString("PROFILE_IMG") );
				
				boardList.add(board);
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return boardList;
	}

	/** 게시글 상세 조회 DAO
	 * @param conn
	 * @param boardNo
	 * @return detail
	 * @throws Exception
	 */
	public BoardDetail selectBoardDetail(Connection conn, int boardNo) throws Exception {
		
		BoardDetail detail = null;
		
		try {
			
			String sql = prop.getProperty("selectBoardDetail");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNo);
			pstmt.setInt(2, boardNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				detail = new BoardDetail();
				
				detail.setBoardNo       (rs.getInt(1));
	            detail.setBoardTitle    (rs.getString(2));
	            detail.setBoardContent  (rs.getString(3));
	            detail.setCreateDate    (rs.getString(4));
	            detail.setReadCount     (rs.getInt(5));
	            detail.setMemberNickname(rs.getString(6));
	            detail.setProfileImage  (rs.getString(7));
	            detail.setMemberNo      (rs.getInt(8));
	            detail.setBoardName     (rs.getString(9));
	            detail.setLikeCount		(rs.getInt(10));
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		return detail;
	}

	/** 게시글에 첨부된 이미지 리스트 조회 DAO
	 * @param conn
	 * @param boardNo
	 * @return imageList
	 * @throws Exception
	 */
	public List<BoardImage> selectImageList(Connection conn, int boardNo) throws Exception {
		
		List<BoardImage> imageList = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("selectImageList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				BoardImage image = new BoardImage();
	            
	            image.setImageNo(rs.getInt(1));
	            image.setImageReName(rs.getString(2));
	            image.setImageOriginal(rs.getString(3));
	            image.setImageLevel(rs.getInt(4));
	            image.setBoardNo(rs.getInt(5));
				
	            imageList.add(image);
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return imageList;
	}

	/** 특정 게시글에 좋아요를 누른 회원 번호 조회 DAO
	 * @param conn
	 * @param boardNo
	 * @return likeList
	 * @throws Exception 
	 */
	public List<Integer> selectLikeList(Connection conn, int boardNo) throws Exception {
		
		List<Integer> likeList = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("selectLikeList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				likeList.add(rs.getInt(1));
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return likeList;
	}

	/** 좋아요 취소 DAO
	 * @param conn
	 * @param boardNo
	 * @param memberNo
	 * @return result
	 * @throws Exception
	 */
	public int minusLike(Connection conn, int boardNo, int memberNo) throws Exception {
		
		int result = 0;
		
		try {
			
			String sql = prop.getProperty("minusLike");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			pstmt.setInt(2, boardNo);
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** 좋아요 클릭 DAO
	 * @param conn
	 * @param boardNo
	 * @param memberNo
	 * @return result
	 * @throws Exception
	 */
	public int plusLike(Connection conn, int boardNo, int memberNo) throws Exception {
		
		int result = 0;
		
		try {
			
			String sql = prop.getProperty("plusLike");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNo);
			pstmt.setInt(2, memberNo);
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** 좋아요 개수 조회 DAO
	 * @param conn
	 * @param boardNo
	 * @return result
	 * @throws Exception
	 */
	public int selectLikeCount(Connection conn, int boardNo) throws Exception {
		
		int likeCount = 0;
		
		try {
			
			String sql = prop.getProperty("selectLikeCount");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNo);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				likeCount = rs.getInt(1);
				
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return likeCount;
	}

	/** 한 페이지 당 게시글의 좋아요 수 얻어오기 DAO
	 * @param conn
	 * @param boardNoList
	 * @return boardLikeList
	 * @throws Exception
	 */
	public List<Integer> getBoardLikeCount(Connection conn, List<Integer> boardNoList) throws Exception {
		
		List<Integer> boardLikeList = new ArrayList<>();
		
		try {
			
			for(int boardNo : boardNoList) {
				
				String sql = prop.getProperty("selectLikeCount");
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, boardNo);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					boardLikeList.add(rs.getInt(1));
				}
				
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return boardLikeList;
	}

	/** 한 페이지 당 게시글의 댓글 수 얻어오기 DAO
	 * @param conn
	 * @param boardNoList
	 * @return replyCountList
	 * @throws Exception
	 */
	public List<Integer> getReplyCount(Connection conn, List<Integer> boardNoList) throws Exception {
		
		List<Integer> replyCountList = new ArrayList<>();
		
try {
			
			for(int boardNo : boardNoList) {
				
				String sql = prop.getProperty("getReplyCount");
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, boardNo);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					replyCountList.add(rs.getInt(1));
				}
				
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return replyCountList;
	}

}
