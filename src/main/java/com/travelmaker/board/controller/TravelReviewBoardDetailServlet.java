package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_kks;
import com.travelmaker.board.model.service.ReplyService_kks;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.board.model.vo.Reply;


@WebServlet("/travelReview/detail")
public class TravelReviewBoardDetailServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int boardNo = Integer.parseInt(req.getParameter("no"));
			
			// 게시글 정보 + 이미지 리스트 조회
			BoardDetail detail = new BoardService_kks().selectBoardDetail(boardNo);

			req.setAttribute("detail", detail);
			
			if(detail != null) {
				ReplyService_kks rService = new ReplyService_kks();
				
				List<Reply> replyList = rService.selectReplyList(boardNo);
				req.setAttribute("replyList", replyList);
			}
			
			String path = "/WEB-INF/views/member/Review/TravelReviewBoardDetail.jsp";
			
			req.getRequestDispatcher(path).forward(req, resp);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	

}
