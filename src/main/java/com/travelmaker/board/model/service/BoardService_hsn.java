package com.travelmaker.board.model.service;

import static com.travelmaker.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.travelmaker.board.model.dao.BoardDAO_hsn;
import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.board.model.vo.BoardImage;
import com.travelmaker.board.model.vo.Pagination;
import com.travelmaker.board.model.vo.Reply;
import com.travelmaker.common.Util;

public class BoardService_hsn {
	
	private BoardDAO_hsn dao = new BoardDAO_hsn();



	/** 게시글 목록 조회 Service
	 * @param type
	 * @param cp
	 * @return map
	 * @throws Exception
	 */
	public Map<String, Object> selectBoardNoticeList(int type, int cp) throws Exception{
		
		Connection conn = getConnection();
		
		// 게시판 이름 조회
		String boardName = dao.selectBoardName(conn, type);
		
		// 특정 게시판 전체 게시글 수 조회 DAO 호출
		int listCount = dao.getListCount(conn ,type);
		
		// 페이지네이션 객체 생성
		Pagination pagination = new Pagination(cp, listCount);
		
		// 게시글 목록 조회
		List<Board> boardList = dao.selectBoardList(conn, pagination, type);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("boardName", boardName);
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		
		close(conn);
		
		
		
		return map;
	}



	/** 게시글 상세조회 Service
	 * @param boardNo
	 * @return detail
	 * @throws Exception
	 */
	public BoardDetail selectBoardDetail(int boardNo) throws Exception{
		
		Connection conn = getConnection();
		
		BoardDetail detail = dao.selectBoardDetail(conn, boardNo);
		
		if(detail != null) {
			
			List<BoardImage> imageList = dao.selectImageList(conn, boardNo);
			
			detail.setImageList(imageList);
		}
		
		close(conn);
		return detail;
	}


	/** 댓글 목록 조회 Service
	 * @param boardNo
	 * @return rList
	 * @throws Exception
	 */
	public List<Reply> selectReplyList(int boardNo) throws Exception{
		
		Connection conn = getConnection();
		
		List<Reply> rList = dao.selectReplyList(conn, boardNo);
		
		close(conn);
		
		return rList;
	}



	/** 댓글 등록 Service
	 * @param reply
	 * @return result
	 * @throws Exception
	 */
	public int insertReply(Reply reply) throws Exception{
		
		Connection conn = getConnection();
		
		// 공격 방지 처리
		reply.setReplyContent(Util.XSSHandling(reply.getReplyContent()));
		
		// 개행문자 변경 처리
		reply.setReplyContent(Util.newLineHandling(reply.getReplyContent()));
		
		int result = dao.insertReply(conn, reply);
		
		if(result > 0 )	commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}


	/** 댓글 삭제 Service
	 * @param replyNo
	 * @return result
	 * @throws Exception
	 */
	public int deleteReply(int replyNo) throws Exception{
		
		Connection conn = getConnection();
		
		int result = dao.deleteReply(conn, replyNo);
		
		if(result > 0 )	commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		
		
		return result;
	}


	/** 게시글 삭제 Service
	 * @param boardNo
	 * @return
	 */
	public int deleteBoard(int boardNo) throws Exception{
		
		Connection conn = getConnection();
		
		int result = dao.deleteBoard(conn, boardNo);
		
		if(result > 0 )	commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}


	/** 댓글 수정 Service
	 * @param replyNo
	 * @param replyContent
	 * @return result
	 * @throws Exception
	 */
	public int updateReply(int replyNo, String replyContent) throws Exception{
		
		Connection conn = getConnection();
		
		// XSS 처리
		replyContent = Util.XSSHandling(replyContent);
		
		// 개행문자 처리
		replyContent = Util.newLineHandling(replyContent);
		
		int result = dao.updateReply(conn, replyNo, replyContent);
		
		if(result > 0)	commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		
		return result;
	}


	/** 게시글 등록 Service
	 * @param detail
	 * @param imageList
	 * @param boardCode
	 * @return boardNo
	 * @throws Exception
	 */
	public int insertBoard(BoardDetail detail, List<BoardImage> imageList, int boardCode) throws Exception{
		
		Connection conn = getConnection();
		
		// 다음 작성할 게시글 번호 얻어오기
		int boardNo = dao.nextBoardNo(conn);
		
		// 게시글 부분만 삽입
		detail.setBoardNo(boardNo);
		
		// XSS 방지 처리
		detail.setBoardTitle(Util.XSSHandling(detail.getBoardTitle()));
		detail.setBoardContent(Util.XSSHandling(detail.getBoardContent()));
		
		// 개행 문자 처리
		detail.setBoardContent(Util.newLineHandling(detail.getBoardContent()));
		
		int result = dao.insertBoard(conn, detail, boardCode);
		
		if(result > 0) {
			
			for(BoardImage image : imageList) {
				
				image.setBoardNo(boardNo); // 게시글 번호 세팅
				
				result = dao.insertBoardImage(conn, image);
				
				if(result == 0) {
					break;
				}
			} // for문 종료
		} // if문 종료
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
			boardNo = 0; // 게시글 번호를 0으로 바꿔서 실패했음을 컨트롤러에 전달
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
	public int updateBoard(BoardDetail detail, List<BoardImage> imageList, String deleteList) throws Exception{
		
		Connection conn = getConnection();
		
		detail.setBoardTitle(Util.XSSHandling(detail.getBoardTitle()));
		detail.setBoardContent(Util.XSSHandling(detail.getBoardContent()));
		
		detail.setBoardContent(Util.newLineHandling(detail.getBoardContent()));
		
		int result = dao.updateBoard(conn, detail);
		
		if(result > 0) {
			
			for(BoardImage img : imageList) {
				
				img.setBoardNo(detail.getBoardNo());
				
				result = dao.updateBoardImage(conn, img);
				
				if(result == 0) {
					result = dao.insertBoardImage(conn, img);
				}
			}
			
			if(!deleteList.equals("")) {
				result = dao.deleteBoardImage(conn, deleteList, detail.getBoardNo());
			}
		}
		if(result > 0)	commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}

//------------------------------------------------------------------------------------------------------------------------------------------------
	//관리자 페이지 게시글 관리 Service 시작
	

	
}
