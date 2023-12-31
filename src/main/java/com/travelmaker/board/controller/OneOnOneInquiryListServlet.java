package com.travelmaker.board.controller;

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

@WebServlet("/admin/OneOnOneInquiry/list")
public class OneOnOneInquiryListServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int type = Integer.parseInt(req.getParameter("type"));

			int cp = 1;
			
			if(req.getParameter("cp") != null) {
				cp = Integer.parseInt(req.getParameter("cp"));
			}
			
			BoardService_ash service = new BoardService_ash();
			
			Map<String, Object> map = null;
			
			if(req.getParameter("query2") == null){ // 일반 목록 조회
				
				map = service.selectOneOnOneInquiryList(type, cp);
				
			} else { // 검색 목록 조회
				
				String query = req.getParameter("query2");
				
				map = service.searchOneOnOneInquiryBoardList(type, cp, query);
			}
			
			req.setAttribute("map", map);
			
			String path = "/WEB-INF/views/member/Admin/Admin-OneOnOneInquirySelect.jsp";
			
			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			dispatcher.forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
