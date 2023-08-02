package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_hsn;
import com.travelmaker.board.model.vo.Board;
import com.travelmaker.member.model.service.MemberService_ash;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/admin/memberBoard/list")
public class MemberBoardListServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int type = Integer.parseInt(req.getParameter("type"));

			int cp = 1;

			if(req.getParameter("cp") != null) {
				cp = Integer.parseInt(req.getParameter("cp"));
			}

			BoardService_hsn service = new BoardService_hsn();
			
			Map<String, Object> map = null;
			
			if(req.getParameter("query2") == null) {
				
				map = service.memberBoardList(type, cp);
				
			}else {
				String query = req.getParameter("query2");
				
				map = service.searchMemberBoardList(type, cp, query);
			}
			
			req.setAttribute("map", map);
//			System.out.println("map " + map);
			String path = "/WEB-INF/views/member/Admin/Admin-memberPost.jsp";
			
			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			dispatcher.forward(req, resp);
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
