package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.travelmaker.board.model.vo.Reply;
import com.travelmaker.member.model.service.MemberService_phj;


@WebServlet("/admin/reply")
public class AdminReply extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String inputId = req.getParameter("memberId");
		
		try {
			
			MemberService_phj service = new MemberService_phj();
			
			List<Reply> rList = service.selectReplyList(inputId);
			String path = "/WEB-INF/views/member/Admin/Admin-memberReply.jsp";
			
			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			dispatcher.forward(req, resp);
			
			new Gson().toJson(rList, resp.getWriter());
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp); // doGet()으로 전달하여 처리 
	}
	
	

}
