package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.board.model.service.BoardService_phj;
import com.travelmaker.board.model.vo.Board;
import com.travelmaker.board.model.vo.Region;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/Region/regionDetail")
public class RegionCtDetail extends HttpServlet {
	
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	try {
		
		// 지역 게시글 상세 조회
		int boardNo = Integer.parseInt(req.getParameter("board"));
		
		BoardService_phj service = new BoardService_phj();
		
		Region region = new Region();
		
		region = service.selectDetail(boardNo);
		
		req.setAttribute("region", region);
		
		// 북마크 기능을 위해 로그인 멤버 정보 얻어오기
		HttpSession session = req.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");

		if(loginMember != null) {
			
			// 회원 번호 얻어오기
			int memberNo = loginMember.getMemberNo();
			
			// 북마크 수 조회 후 북마크 체크 여부 검사
			int bookmarkCount = service.countBookmark(boardNo, memberNo);
			
			// 북마크 체크 여부 검사 변수 선언
			String bookmarkState = null;
			
			if(bookmarkCount > 0) {
				bookmarkState = "Y";
				
			} else {
				bookmarkState = "N";
			}
			
			req.setAttribute("bookmarkState", bookmarkState);
		}
		
		String path = "/WEB-INF/views/member/Region/region3.jsp";
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);
		
	}catch(Exception e) {
		e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
