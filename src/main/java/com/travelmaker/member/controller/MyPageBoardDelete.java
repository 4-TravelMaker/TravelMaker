package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.member.model.service.MemberService_phj;


@WebServlet("/myPage/board/*")
public class MyPageBoardDelete extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	      String uri = req.getRequestURI();
	      String contextPath = req.getContextPath();
	      String command = uri.substring( (contextPath + "/myPage/board/").length() );
		
		try {
			
			if(command.equals("delete")) {
	            int boardNo = Integer.parseInt(req.getParameter("boardNo"));

	            int result = new MemberService_phj().deleteBoard(boardNo);
	            
	            System.out.println(result);
	            resp.getWriter().print(result);
	         }
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
