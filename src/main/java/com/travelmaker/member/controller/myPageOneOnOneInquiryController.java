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
public class myPageOneOnOneInquiryController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring( (contextPath + "/myPage/OneOnOneInquiry/").length() );
		
		BoardService_ash service = new BoardService_ash();
		
		try {
			
			// 일대일 문의 답변 목록 조회
			if(command.equals("list")) {
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));

				List<Reply> rList = service.selectReplyList(boardNo);
				
				new Gson().toJson(rList, resp.getWriter());
				
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
