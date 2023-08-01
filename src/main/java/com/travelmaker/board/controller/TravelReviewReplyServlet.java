package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.travelmaker.board.model.service.ReplyService_kks;
import com.travelmaker.board.model.vo.Reply;

@WebServlet("/travelReview/reply/*")
public class TravelReviewReplyServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring( (contextPath + "/travelReview/reply/").length() );
		
		ReplyService_kks service = new ReplyService_kks();
		
		try {
			
			if(command.equals("selectReplyList")) {
			
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				
				List<Reply> replyList = service.selectReplyList(boardNo);
				
				new Gson().toJson(replyList, resp.getWriter());
				
			}
			
			if(command.equals("insert")) {
				
				String replyContent = req.getParameter("replyContent");
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				int memberNo = Integer.parseInt(req.getParameter("memberNo"));
				
				Reply reply = new Reply();
				
				reply.setReplyContent(replyContent);
				reply.setMemberNo(memberNo);
				reply.setBoardNo(boardNo);
				
				int result = service.insertReply(reply);
				
				resp.getWriter().print(result);
				
			}
			
			if(command.equals("delete")) {
				
				int replyNo = Integer.parseInt( req.getParameter("replyNo") );
				
				int result = service.deleteReply(replyNo);
				
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
