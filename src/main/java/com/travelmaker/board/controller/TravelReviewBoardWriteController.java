package com.travelmaker.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_kks;
import com.travelmaker.board.model.vo.BoardDetail;

@WebServlet("/travelReview/write")
public class TravelReviewBoardWriteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
//			String mode = req.getParameter("mode");
//			
//			if(mode.equals("update")) {
//				
//				int boardNo = Integer.parseInt( req.getParameter("no") );
//				
//				BoardDetail detail = new BoardService_kks().selectBoardDetail(boardNo);
//				
//				detail.setBoardContent( detail.getBoardContent().replaceAll("<br>", "\n") );
//				
//				req.setAttribute("detail", detail);
//			}
			
			String path = "/WEB-INF/views/member/Review/writeForm.jsp";
			req.getRequestDispatcher(path).forward(req, resp);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
}
