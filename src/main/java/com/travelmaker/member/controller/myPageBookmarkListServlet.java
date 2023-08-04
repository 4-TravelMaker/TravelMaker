package com.travelmaker.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.board.model.vo.Board;
import com.travelmaker.member.model.service.MemberService_ash;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/myPage/bookmark")
public class myPageBookmarkListServlet extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			MemberService_ash service = new MemberService_ash();
			
			HttpSession session = req.getSession();
			
			Member loginMember = (Member)session.getAttribute("loginMember");
			
			int memberNo = loginMember.getMemberNo();
			
			// 마이페이지 - 북마크 리스트 조회
			List<Board> bookMarkList = service.selectBookmarkList(memberNo);
			
			req.setAttribute("bookMarkList", bookMarkList);
			
			String path = "/WEB-INF/views/member/myPage/myPage-bookmark.jsp";
			
			req.getRequestDispatcher(path).forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
