package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.member.model.service.MemberService_phj;


@WebServlet("/myPage/board-detail/*")
public class myPageBoardController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring( (contextPath + "/myPage/board-detail/").length() );
		
		MemberService_phj service = new MemberService_phj();
		
		try {
			
			if(command.equals("delete")) {
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				
				int result1 = service.deleteBoard(boardNo);
				
				resp.getWriter().print(result1);
			}
			
			
			if(command.equals("update")) {
			
			int boardNo = Integer.parseInt( req.getParameter("boardNo") );
			String boardTitle = req.getParameter("boardTitle");
			String boardContent = req.getParameter("boardContent");
			
			int result = service.updateBoard(boardNo, boardTitle, boardContent);
			
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
