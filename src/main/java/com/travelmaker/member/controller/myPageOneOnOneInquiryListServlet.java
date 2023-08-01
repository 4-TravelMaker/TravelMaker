package com.travelmaker.member.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.board.model.service.BoardService_ash;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/myPage/OneOnOneInquiry/list")
public class myPageOneOnOneInquiryListServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			HttpSession session = req.getSession();
			
			Member loginMember = (Member)session.getAttribute("loginMember");
			
			int memberNo = loginMember.getMemberNo();
			
			int type = Integer.parseInt(req.getParameter("type"));

			int cp = 1;
			
			if(req.getParameter("cp") != null) {
				cp = Integer.parseInt(req.getParameter("cp"));
			}
			
			BoardService_ash service = new BoardService_ash();
			
			Map<String, Object> map = service.selectMyPageOneOnOneInquiryList(memberNo, type, cp);
				
			req.setAttribute("map", map);
			
			String path = "/WEB-INF/views/member/myPage/myPage-OneOnOneInquirySelect.jsp";
			
			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			dispatcher.forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
