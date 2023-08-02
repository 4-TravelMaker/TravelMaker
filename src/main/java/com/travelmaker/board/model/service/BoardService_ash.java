package com.travelmaker.board.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.travelmaker.board.controller.BoardNoticeDeleteServlet;
import com.travelmaker.board.model.dao.BoardDAO_ash;
import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.board.model.vo.Pagination;
import com.travelmaker.board.model.vo.Reply;
import com.travelmaker.common.Util;

public class BoardService_ash {
	
	private BoardDAO_ash dao = new BoardDAO_ash();
	
	/** 일대일 문의 게시글 목록 조회 Service
	 * @param cp
	 * @return map
	 * @throws Exception
	 */
	public Map<String, Object> selectOneOnOneInquiryList(int type, int cp) throws Exception {

		Connection conn = getConnection();
		
		// 전체 게시글 수
		int listCount = dao.getListCount(conn, type);
		
		// 전체 게시글 수 + 현재 페이지(cp) 이용해서 페이지네이션 객체 생성
		Pagination pagination = new Pagination(cp, listCount);
		
		// 게시글 목록 조회
		List<Board> boardList = dao.selectOneOnOneInquiryList(conn, pagination, type);
		
		// Map 객체를 생성해서 결과 모두 객체에 저장
		Map<String, Object> map = new HashMap<>();
		
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		
		close(conn);
		
		return map;
	}

	/** 일대일 문의 게시글 상세 조회 Service
	 * @param boardNo
	 * @return detail
	 * @throws Exception
	 */
	public BoardDetail selectOneOnOneInquiryDetail(int boardNo) throws Exception {
		
		Connection conn = getConnection();
		
		BoardDetail detail = dao.selectOneOnOneInquiryDetail(conn, boardNo);
		
		close(conn);
		
		return detail;
	}

	/** 일대일 문의 답변 작성 Service
	 * @param reply
	 * @return result
	 * @throws Exception
	 */
	public int insertOneOnOneInquiryReply(Reply reply) throws Exception {
		
		Connection conn = getConnection();
		
		reply.setReplyContent( Util.XSSHandling(reply.getReplyContent()) );
		reply.setReplyContent( Util.newLineHandling(reply.getReplyContent()) );
		
		int result = dao.insertOneOnOneInquiryReply(conn, reply);

		if(result > 0) commit(conn);
		else		   rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 일대일 문의 답변 목록 조회 Service
	 * @param boardNo
	 * @return rList
	 * @throws Exception
	 */
	public List<Reply> selectReplyList(int boardNo) throws Exception {
		
		Connection conn = getConnection();
		
		List<Reply> rList = dao.selectReplyList(conn, boardNo);
		
		close(conn);
		
		return rList;
	}

	/** 일대일 문의 답변 삭제 Service
	 * @param replyNo
	 * @return result
	 * @throws Exception
	 */
	public int deleteOneOnOneInquiryReply(int replyNo) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.deleteOneOnOneInquiryReply(conn, replyNo);

		if(result > 0) commit(conn);
		else		   rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 일대일 문의 답변 수정 Service
	 * @param replyNo
	 * @param replyContent
	 * @return result
	 * @throws Exception
	 */
	public int updateOneOnOneInquiryReply(int replyNo, String replyContent) throws Exception {
		
		Connection conn = getConnection();
		
		// XSS 처리
		replyContent = Util.XSSHandling(replyContent);
		
		// 개행문자 처리
		replyContent = Util.newLineHandling(replyContent);
		
		int result = dao.updateOneOnOneInquiryReply(conn, replyNo, replyContent);
		
		if(result > 0) commit(conn);
		else		   rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 일대일 문의 아이디 검색 Service
	 * @param type
	 * @param cp
	 * @param query
	 * @return map
	 * @throws Exception
	 */
	public Map<String, Object> searchOneOnOneInquiryBoardList(int type, int cp, String query) throws Exception {

		Connection conn = getConnection();
		
		String condition = "AND MEMBER_ID LIKE '%" + query + "%'";
		
		// 검색 조건에 만족하는 게시글 수 조회
		int listCount = dao.searchListCount(type, conn, condition);
		
		Pagination pagination = new Pagination(cp, listCount);
		
		List<Board> boardList = dao.searchOneOnOneInquiryBoardList(conn, pagination, type, condition);
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		
		close(conn);
		
		return map;
	}

	/** 마이페이지 - 일대일 문의 게시글 목록 조회 Service
	 * @param memberNo
	 * @param type
	 * @param cp
	 * @return map
	 * @throws Exception
	 */
	public Map<String, Object> selectMyPageOneOnOneInquiryList(int memberNo, int type, int cp) throws Exception {
		
		Connection conn = getConnection();
		
		// 전체 게시글 수
		int listCount = dao.getMyPageListCount(memberNo, conn, type);

		// 전체 게시글 수 + 현재 페이지(cp) 이용해서 페이지네이션 객체 생성
		Pagination pagination = new Pagination(cp, listCount);
		
		// 게시글 목록 조회
		List<Board> boardList = dao.selectMyPageOneOnOneInquiryList(conn, pagination, type, memberNo);
		
		// Map 객체를 생성해서 결과 모두 객체에 저장
		Map<String, Object> map = new HashMap<>();
		
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		
		close(conn);
		
		return map;
	}

	/** 마이페이지 - 일대일 문의글 삭제 Service
	 * @param boardNo
	 * @return result
	 * @throws Exception
	 */
	public int deleteOneOnOneInquiryBoard(int boardNo) throws Exception {

		Connection conn = getConnection();
		
		int result = dao.deleteOneOnOneInquiryBoard(conn, boardNo);

		if(result > 0) commit(conn);
		else		   rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 마이페이지 - 일대일 문의글 수정 Service
	 * @param boardNo
	 * @param boardTitle
	 * @param boardContent
	 * @return result
	 * @throws Exception
	 */
	public int updateOneOnOneInquiryBoard(int boardNo, String boardTitle, String boardContent) throws Exception {

		Connection conn = getConnection();
		
		// XSS 처리
		boardContent = Util.XSSHandling(boardContent);
		
		// 개행문자 처리
		boardContent = Util.newLineHandling(boardContent);
		
		int result = dao.updateOneOnOneInquiryBoard(conn, boardNo, boardTitle, boardContent);
		
		if(result > 0) commit(conn);
		else		   rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 마이페이지 - 일대일 문의글 작성 Service
	 * @param detail
	 * @param boardCode
	 * @return boardNo
	 * @throws Exception
	 */
	public int insertBoard(BoardDetail detail, int boardCode) throws Exception {
		
		Connection conn = getConnection();
		
		int boardNo = dao.nextBoardNo(conn);
		
		detail.setBoardNo(boardNo);
		
		detail.setBoardTitle( Util.XSSHandling(detail.getBoardTitle()) );
		detail.setBoardContent( Util.XSSHandling(detail.getBoardContent()) );
		detail.setBoardContent( Util.newLineHandling(detail.getBoardContent()) );
		
		int result = dao.insertBoard(conn, detail, boardCode);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
			boardNo = 0;
		}
		
		close(conn);
		
		return boardNo;
	}

}
