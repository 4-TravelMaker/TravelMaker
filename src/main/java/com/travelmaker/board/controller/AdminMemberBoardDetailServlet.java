package com.travelmaker.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_hsn;
import com.travelmaker.board.model.vo.BoardDetail;


@WebServlet("/admin/memberBoard/detail")
public class AdminMemberBoardDetailServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int boardNo = Integer.parseInt(req.getParameter("no"));
			
			BoardService_hsn service = new BoardService_hsn();
			
			BoardDetail detail = service.adminMemberBoardDetail(boardNo);
			
			req.setAttribute("detail", detail);
			
			String path = "/WEB-INF/views/member/Admin/Admin-memberPostDetail.jsp";
			
			req.getRequestDispatcher(path).forward(req, resp);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
