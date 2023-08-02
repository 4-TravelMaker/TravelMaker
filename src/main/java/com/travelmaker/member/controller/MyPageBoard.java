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
import com.travelmaker.member.model.service.MemberService_phj;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/myPage/board")
public class MyPageBoard extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			HttpSession session = req.getSession();
			
			Member loginMember = (Member)session.getAttribute("loginMember");
			
			int memberNo = loginMember.getMemberNo();
			
			MemberService_phj service = new MemberService_phj();
			
			List<Board> list = service.selectBoard(memberNo);
			
			String path = "/WEB-INF/views/member/myPage/myPage-board.jsp";
			
			req.setAttribute("list", list);
			
			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			dispatcher.forward(req, resp);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
