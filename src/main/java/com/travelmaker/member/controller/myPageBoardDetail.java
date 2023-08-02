package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.member.model.service.MemberService_phj;

@WebServlet("/myPage/board-detail")
public class myPageBoardDetail extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int boardNo = Integer.parseInt(req.getParameter("no"));
			
			MemberService_phj service = new MemberService_phj();
			
			BoardDetail detail = service.selectBoardDetail(boardNo);
			
			req.setAttribute("detail", detail);
			
			String path = "/WEB-INF/views/member/myPage/myPage-boardDetail.jsp";
			
			req.getRequestDispatcher(path).forward(req, resp);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
