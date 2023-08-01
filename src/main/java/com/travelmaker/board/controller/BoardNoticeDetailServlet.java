package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_hsn;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.board.model.vo.Reply;



@WebServlet("/boardNotice/detail")
public class BoardNoticeDetailServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int boardNo = Integer.parseInt(req.getParameter("no"));
			
			BoardService_hsn service = new BoardService_hsn();
			
			BoardDetail detail = service.selectBoardDetail(boardNo);
			
			if(detail != null) {
				BoardService_hsn rService = new BoardService_hsn();
				
				List<Reply> rList = rService.selectReplyList(boardNo);
				req.setAttribute("rList", rList);
				
//				System.out.println("rList = " + rList);
			}
			
			
			req.setAttribute("detail", detail);
			
			
			
			String path = "/WEB-INF/views/member/BoardNotice/BoardNoticeDetail.jsp";
			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			
			dispatcher.forward(req, resp);
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
