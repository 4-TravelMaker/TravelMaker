package com.travelmaker.board.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.travelmaker.common.JDBCTemplate.*;

import com.travelmaker.board.model.dao.BoardDAO_kks;
import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.board.model.vo.BoardImage;
import com.travelmaker.board.model.vo.BoardLike;
import com.travelmaker.board.model.vo.Pagination;
import com.travelmaker.board.model.vo.Reply;
import com.travelmaker.common.Util;

public class BoardService_kks {

	private BoardDAO_kks dao = new BoardDAO_kks();
	
	/** 여행 리뷰 게시판 조회 Service
	 * @param type
	 * @param cp
	 * @return map
	 * @throws Exception
	 */
	public Map<String, Object> selectBoardList(int type, int cp) throws Exception {
		
		Connection conn = getConnection();
		
		// 1. 게시판 이름 얻어오기
		String boardName = dao.selectBoardName(conn, type);
		
		// 특정 게시판 전체 게시글 수 조회
		int listCount = dao.getListCount(conn, type);
		
		// 한 페이지에 보여질 게시글 수 == 6
		int limit = 6;
		
		// 2. 페이지네이션 객체 생성
		Pagination pagination = new Pagination(cp, listCount, limit);
		
		// 3. 게시글 목록 조회
		List<Board> boardList = dao.selectBoardList(conn, pagination, type);
		
		// 조회되는 페이지의 게시글 번호 목록
		List<Integer> boardNoList = new ArrayList<>();
		
		for(Board board : boardList) {
			boardNoList.add( board.getBoardNo() );
		}
		
		// 4. 한 페이지 당 게시글의 좋아요 수 얻어오기
		List<Integer> boardLikeList = dao.getBoardLikeCount(conn, boardNoList);
		
		// 5. 한 페이지 당 게시글의 댓글 수 얻어오기
		List<Integer> replyCountList = dao.getReplyCount(conn, boardNoList);
		
		// Map 객체에 게시판 이름, 페이지네이션, 게시글 목록, 게시글 썸네일 이미지 저장
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("boardName", boardName);
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		map.put("boardLikeList", boardLikeList);
		map.put("replyCountList", replyCountList);
		
		close(conn);
		
		return map;
		
	}

	/** 게시글 상세 조회 Service
	 * @param boardNo
	 * @return detail
	 * @throws Exception
	 */
	public BoardDetail selectBoardDetail(int boardNo) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.plusReadCount(conn, boardNo);
		
		if(result > 0)	commit(conn);
		else			rollback(conn);
		
		BoardDetail detail = dao.selectBoardDetail(conn, boardNo);
		
		if(detail != null) {
			
			List<BoardImage> imageList = dao.selectImageList(conn, boardNo);
		
			detail.setImageList(imageList);
			
			List<Integer> likeList = dao.selectLikeList(conn, boardNo);
			
			detail.setLikeList(likeList);
		}
		
		close(conn);
		
		return detail;
	}

	/** 좋아요 취소 Service
	 * @param boardNo
	 * @param memberNo
	 * @return result
	 * @throws Exception
	 */
	public int minusLike(int boardNo, int memberNo) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.minusLike(conn, boardNo, memberNo);
		
		if(result > 0)	commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 좋아요 클릭 Service
	 * @param boardNo
	 * @param memberNo
	 * @return result
	 * @throws Exception
	 */
	public int plusLike(int boardNo, int memberNo) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.plusLike(conn, boardNo, memberNo);
		
		if(result > 0)	commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 좋아요 개수 조회 Service 
	 * @param boardNo
	 * @return result
	 * @throws Exception
	 */
	public int selectLikeCount(int boardNo) throws Exception {
		
		Connection conn = getConnection();
		
		int likeCount = dao.selectLikeCount(conn, boardNo);
		
		close(conn);
		
		return likeCount;
	}

	/** 게시글 등록 Service
	 * @param detail
	 * @param imageList
	 * @param boardCode
	 * @return boardNo
	 * @throws Exception
	 */
	public int insertBoard(BoardDetail detail, List<BoardImage> imageList, int boardCode) throws Exception {
		
		Connection conn = getConnection();
		
		int boardNo = dao.nextBoardNo(conn);
		
		detail.setBoardNo(boardNo);
		
		detail.setBoardTitle( Util.XSSHandling( detail.getBoardTitle() ) );
		detail.setBoardContent( Util.XSSHandling( detail.getBoardContent() ) );
		detail.setBoardContent( Util.newLineHandling( detail.getBoardContent() ) );
		
		int result = dao.insertBoard(conn, detail, boardCode);
		
		if(result > 0) {
			
			for(BoardImage image : imageList) {
				
				image.setBoardNo(boardNo);
				
				result = dao.insertBoardImage(conn, image);
				
				if(result == 0) {
					break;
				}
			}
		}
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
			boardNo = 0;
		}
		
		close(conn);
		
		return boardNo;
	}

	/** 게시글 수정 Service
	 * @param detail
	 * @param imageList
	 * @param deleteList
	 * @return result
	 * @throws Exception
	 */
	public int updateBoard(BoardDetail detail, List<BoardImage> imageList, String deleteList) throws Exception {
		
		Connection conn = getConnection();
		
		detail.setBoardTitle( Util.XSSHandling( detail.getBoardTitle() ) );
		detail.setBoardContent( Util.XSSHandling( detail.getBoardContent() ) );
		detail.setBoardContent( Util.newLineHandling( detail.getBoardContent() ) );
		
		int result = dao.updateBoard(conn, detail);
		
		if(result > 0) {
			
			for(BoardImage img : imageList) {
				
				img.setBoardNo(detail.getBoardNo());
				result = dao.updateBoardImage(conn, img);
				
				if(result == 0) {
					result = dao.insertBoardImage(conn, img);
				}
			}
			
			if(!deleteList.equals("")) { // 삭제된 이미지 레벨이 기록되어 있을 때만 삭제
				result = dao.deleteBoardImage(conn, deleteList, detail.getBoardNo());
			}
		}
		
		if(result > 0)	commit(conn);
		else			rollback(conn);	
		
		close(conn);
		
		return result;
	}

	/** 게시글 삭제 Service
	 * @param boardNo
	 * @return result
	 * @throws Exception
	 */
	public int deleteBoard(int boardNo) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.deleteBoard(conn, boardNo);
		
		if(result > 0)	commit(conn);
		else			rollback(conn);
		
		return result;
	}

	/** 게시글 검색 Service
	 * @param type
	 * @param cp
	 * @param key
	 * @param query
	 * @return map
	 * @throws Exception
	 */
	public Map<String, Object> searchBoardList(int type, int cp, String key, String query) throws Exception {
		
		Connection conn = getConnection();
		
		String boardName = dao.selectBoardName(conn, type);
		
		String condition = null;
		
		switch(key) {
		case "t" : condition = " AND BOARD_TITLE LIKE '%" + query + "%' "; break;
		case "c" : condition = " AND BOARD_TITLE LIKE '%" + query + "%' "; break;
		case "tc" : condition = " AND (BOARD_TITLE LIKE '%" + query + "%' OR BOARD_CONTENT LIKE '%" + query + "%') "; break;
		case "w" : condition = " AND MEMBER_NICK LIKE '%" + query + "%' "; break;
		}
		
		int listCount = dao.searchListCount(conn, type, condition);
		
		int limit = 6;
		
		Pagination pagination = new Pagination(cp, listCount, limit);
		
		List<Board> boardList = dao.searchBoardList(conn, pagination, type, condition);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("boardName", boardName);
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		
		close(conn);
		
		return map;
	}

}
