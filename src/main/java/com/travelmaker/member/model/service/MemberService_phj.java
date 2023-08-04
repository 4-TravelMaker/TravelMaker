package com.travelmaker.member.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.board.model.vo.Pagination;
import com.travelmaker.board.model.vo.Pagination;
import com.travelmaker.board.model.vo.Reply;
import com.travelmaker.common.Util;
import com.travelmaker.member.model.dao.MemberDAO_phj;
import com.travelmaker.member.model.vo.Member;

public class MemberService_phj {
	
	private MemberDAO_phj dao = new MemberDAO_phj();

	
	
	/** 비밀번호 찾기 Service
	 * @param inputId
	 * @return member
	 * @throws Exception
	 */
	public Member selectPw(String inputId) throws Exception{
		
		Connection conn = getConnection();
		
		Member member = dao.selectPw(conn, inputId);
		
		close(conn);
		
		return member;
	}



	/** 비밀번호 수정 Service
	 * @param id
	 * @param pw
	 * @return result
	 * @throws Exception
	 */
	public int updatePw(String id, String pw) throws Exception{
		
		Connection conn = getConnection();
		
		int result = dao.updatePw(conn, id, pw);
		
		if(result > 0)  commit(conn);
		else     		rollback(conn);
		
		return result;
	}

	
	
	
	/** 게시글 목록 조회 service
	 * @param memberNo
	 * @param type
	 * @param cp
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> selectBoard(int memberNo, int type, int cp) throws Exception {
		
		Connection conn = getConnection();
		
		// 전체 게시글 수 
		int listCount = dao.getListCount(conn, type);
		
		Pagination pagination = new Pagination(cp, listCount);
		
		// 게시글 목록 조회
		List<Board> boardList = dao.selectBoard(conn, pagination, memberNo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pagination", pagination);
		map.put("board", boardList);
		
		System.out.println(boardList);
		
		close(conn);
		
		return map;
	}





	/** 게시글 삭제 service
	 * @param boardNo
	 * @return result1
	 * @throws Exception
	 */
	public int deleteBoard(int boardNo) throws Exception{
		
		Connection conn = getConnection();
		
		int result1 = dao.deleteBoard(conn, boardNo);
		
		if(result1 >0) commit(conn);
		else         rollback(conn);
		
		close(conn);
		
		return result1;
	}



	/** 게시글 수정 service
	 * @param boardNo
	 * @param boardTitle
	 * @param boardContent
	 * @return result
	 * @throws Exception
	 */
	public int updateBoard(int boardNo, String boardTitle, String boardContent) throws Exception{
		
		Connection conn = getConnection();
		
		boardContent = Util.XSSHandling(boardContent);
		
		boardContent = Util.newLineHandling(boardContent);
		
		int result = dao.updateBoard(conn, boardNo, boardTitle, boardContent);
		
		if(result > 0) commit(conn);
		else           rollback(conn);
		
		close(conn);
		
		return result;
	}



	/** 게시글/댓글 상세 조회 service
	 * @param boardNo
	 * @return map
	 * @throws Exception
	 */
	public Map<String, Object> selectBoardDetail(int boardNo) throws Exception {
		
		Connection conn = getConnection();
		
		BoardDetail detail = dao.selectBoardDetail(conn, boardNo);
		
		List<Reply> rList = dao.selectReplyList(conn, boardNo);
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("detail", detail);
		map.put("rList", rList);
		
		close(conn);
		
		return map;
	}
}
