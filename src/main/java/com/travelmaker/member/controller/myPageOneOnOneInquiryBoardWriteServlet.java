package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.board.model.service.BoardService_ash;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/myPage/OneOnOneInquiry/write")
public class myPageOneOnOneInquiryBoardWriteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String mode = req.getParameter("mode");
			String path = "/WEB-INF/views/member/myPage/myPage-OneOnOneInquiryWrite.jsp";
			req.getRequestDispatcher(path).forward(req, resp);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			// 문의글 작성에 필요한 파라미터 얻어오기
			HttpSession session = req.getSession();
			
			String boardTitle = req.getParameter("boardTitle");
			String boardContent = req.getParameter("boardContent");
			int boardCode = Integer.parseInt( req.getParameter("type") );
			
			Member loginMember = (Member)session.getAttribute("loginMember");
			int memberNo = loginMember.getMemberNo();
			
			BoardDetail detail = new BoardDetail();
			
			detail.setBoardTitle(boardTitle);
			detail.setBoardContent(boardContent);
			detail.setMemberNo(memberNo);
			
			// 서비스 객체 생성
			BoardService_ash service = new BoardService_ash();
			
			String mode = req.getParameter("mode");
			
			if(mode.equals("insert")) {
				
				int boardNo = service.insertBoard(detail, boardCode);
				
				String path = null;
				
				if(boardNo > 0) { // 성공
					session.setAttribute("message", "문의글이 등록되었습니다.");
					path = "detail?no=" + boardNo + "&type=" + boardCode;
					
				} else { // 실패
					session.setAttribute("message", "문의글 등록에 실패했습니다.");
					path = "write?mode=" + mode + "&type=" + boardCode;
				}
				
				resp.sendRedirect(path);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
