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
		String command = uri.substring( (contextPath + "/reply/").length()  );
		
		BoardService_hsn service = new BoardService_hsn();
		
		try {
			
			if(command.equals("selectReplyList")) {
				
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				
				List<Reply> rList = service.selectReplyList(boardNo);
				
				new Gson().toJson(rList, resp.getWriter());
				
				System.out.println(" rList = " +rList);
				
			}
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	}
	
	
	
	

}
