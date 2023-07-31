package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.travelmaker.board.model.service.BoardService_hsn;
import com.travelmaker.board.model.vo.Reply;

@WebServlet("/boardNotice/reply/*")
public class BoardNoticeReplyController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring( (contextPath + "/boardNotice/reply/").length()  );
		
		BoardService_hsn service = new BoardService_hsn();
		
		try {
			
			if(command.equals("selectReplyList")) {
				
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				
				List<Reply> rList = service.selectReplyList(boardNo);
				
				System.out.println("rList = " + rList);
				
				new Gson().toJson(rList, resp.getWriter());
				
			}
			
			// 댓글 등록
			if(command.equals("insert")) {
				
				String replyContent = req.getParameter("replyContent");
				int memberNo = Integer.parseInt(req.getParameter("memberNo"));
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				
				
				Reply reply = new Reply();
				reply.setReplyContent(replyContent);
				reply.setMemberNo(memberNo);
				reply.setBoardNo(boardNo);
				
				int result = service.insertReply(reply);
				
				resp.getWriter().print(result);
			}
			
			// 댓글 삭제 
			if(command.equals("delete")) {
				
				int replyNo = Integer.parseInt(req.getParameter("replyNo"));
				
				int result = service.deleteReply(replyNo);
				
				
				resp.getWriter().print(result);
			}
			
			//댓글 수정
			if(command.equals("update")) {
				
				int replyNo = Integer.parseInt( req.getParameter("replyNo"));
				String replyContent = req.getParameter("replyContent");
				
				int result = service.updateReply( replyNo, replyContent);
				resp.getWriter().print(result);
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		doGet(req, resp);
		
	}
	
	
	
	

}
