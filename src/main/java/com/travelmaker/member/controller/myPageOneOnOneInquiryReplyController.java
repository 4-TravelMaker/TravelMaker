package com.travelmaker.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.travelmaker.board.model.service.BoardService_ash;
import com.travelmaker.board.model.vo.Reply;

@WebServlet("/myPage/OneOnOneInquiry/*")
public class myPageOneOnOneInquiryReplyController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring( (contextPath + "/myPage/OneOnOneInquiry/").length() );
		
		BoardService_ash service = new BoardService_ash();
		
		try {
			
			// 일대일 문의 답변 목록 조회
			if(command.equals("selectReplyList")) {
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));

				List<Reply> rList = service.selectReplyList(boardNo);
				
				new Gson().toJson(rList, resp.getWriter());
				
			}
			
			// 일대일 문의 답변 작성
			if(command.equals("insert")) {
				String replyContent = req.getParameter("replyContent");
				int memberNo = Integer.parseInt(req.getParameter("memberNo"));
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				
				Reply reply = new Reply();
				
				reply.setReplyContent(replyContent);
				reply.setMemberNo(memberNo);
				reply.setBoardNo(boardNo);
				
				int result = service.insertOneOnOneInquiryReply(reply);
				
				resp.getWriter().print(result);
			}
			
			if(command.equals("delete")) {
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				
				int result = service.deleteOneOnOneInquiryBoard(boardNo);
				
				resp.getWriter().print(result);
			}
			
			if(command.equals("update")) {
				
				int replyNo = Integer.parseInt( req.getParameter("replyNo") );
				String replyContent = req.getParameter("replyContent");
				
				int result = service.updateOneOnOneInquiryReply(replyNo, replyContent);
				
				resp.getWriter().print(result);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
