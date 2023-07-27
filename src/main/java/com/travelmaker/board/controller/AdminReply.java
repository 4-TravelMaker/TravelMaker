package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.travelmaker.board.model.service.BoardService_phj;
import com.travelmaker.board.model.vo.Reply;
import com.travelmaker.member.model.service.MemberService_phj;


@WebServlet("/admin/reply")
public class AdminReply extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			// Service 객체 생성 
			BoardService_phj service = new BoardService_phj(); 
			
			// 댓글 목록 담을 리스트 생성 
		    List<Reply> rList = service.selectReplyList();
			
			String path = "/WEB-INF/views/member/Admin/Admin-memberReply.jsp";

			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			dispatcher.forward(req, resp);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp); // doGet()으로 전달하여 처리 
	}
	
	

}
