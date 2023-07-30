package com.travelmaker.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_kks;

@WebServlet("/travelReview/*")
public class TravelReviewLikeServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring( (contextPath + "/travelReview/").length() );
		
		BoardService_kks service = new BoardService_kks();
		
		try {
			
			if(command.equals("selectLike")) {
				
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				
				int likeCount = service.selectLikeCount(boardNo);
				
				resp.getWriter().print(likeCount);
				
			}
			
			if(command.equals("minusLike")) { // 좋아요 클릭 취소
				
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				int memberNo = Integer.parseInt(req.getParameter("memberNo"));
				
				int result = service.minusLike(boardNo, memberNo);
				
				resp.getWriter().print(result);
				
			}
			
			if(command.equals("plusLike")) { // 좋아요 클릭
				
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				int memberNo = Integer.parseInt(req.getParameter("memberNo"));
				
				int result = service.plusLike(boardNo, memberNo);
				
				resp.getWriter().print(result);
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
