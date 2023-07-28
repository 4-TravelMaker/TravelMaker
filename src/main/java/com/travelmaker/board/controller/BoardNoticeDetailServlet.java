package com.travelmaker.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_hsn;
import com.travelmaker.board.model.vo.BoardDetail;



@WebServlet("/boardNotice/detail")
public class BoardNoticeDetailServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int boardNo = Integer.parseInt(req.getParameter("no"));
			
			BoardService_hsn service = new BoardService_hsn();
			
			BoardDetail detail = service.selectBoardDetail(boardNo);
			
			
			req.setAttribute("detail", detail);
			
			System.out.println(detail);
			
			String path = "/WEB-INF/views/member/BoardNotice/BoardNoticeDetail.jsp";
			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			
			dispatcher.forward(req, resp);
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
