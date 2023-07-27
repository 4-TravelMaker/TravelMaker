package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.travelmaker.board.model.service.BoardService_ash;
import com.travelmaker.board.model.vo.Reply;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/admin/OneOnOneInquiry/*")
public class OneOnOneInquiryReplyController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring( (contextPath + "/admin/OneOnOneInquiry/").length() );
		
		BoardService_ash service = new BoardService_ash();
		
		try {
			
			String replyContent = req.getParameter("replyContent");
			int memberNo = Integer.parseInt(req.getParameter("memberNo"));
			int boardNo = Integer.parseInt(req.getParameter("boardNo"));

			if(command.equals("selectReplyList")) {
			
				List<Reply> rList = service.selectReplyList(boardNo);
				
				new Gson().toJson(rList, resp.getWriter());
				
			}
						
			if(command.equals("insert")) {
				
				
				Reply reply = new Reply();
				
				reply.setReplyContent(replyContent);
				reply.setMemberNo(memberNo);
				reply.setBoardNo(boardNo);
				
				int result = service.insertOneOnOneInquiryReply(reply);
				
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
