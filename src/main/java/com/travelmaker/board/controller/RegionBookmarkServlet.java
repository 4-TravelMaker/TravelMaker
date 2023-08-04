package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.board.model.service.BoardService_ash;
import com.travelmaker.board.model.vo.Board;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/Region/regionDetail/*")
public class RegionBookmarkServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring( (contextPath + "/Region/regionDetail/").length() );
		
		BoardService_ash service = new BoardService_ash();
		
		try {
			// 북마크 기능을 위해 로그인 멤버 정보 얻어오기
			HttpSession session = req.getSession();
			
			Member loginMember = (Member)session.getAttribute("loginMember");

			// 북마크 체크
			if(command.equals("checkedBookmark")) {

					// 회원 번호와 게시글 번호 얻어오기
					int memberNo = loginMember.getMemberNo();
					int boardNo = Integer.parseInt(req.getParameter("boardNo"));
					
					// 북마크 체크
					int result = service.checkedBookmark(boardNo, memberNo);

					resp.getWriter().print(result);
				}
			
			// 북마크 체크 해제
			if(command.equals("uncheckedBookmark")) {
				
				// 회원 번호와 게시글 번호 얻어오기
				int memberNo = loginMember.getMemberNo();
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				
				// 북마크 체크
				int result = service.uncheckedBookmark(boardNo, memberNo);

				resp.getWriter().print(result);
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
	
	