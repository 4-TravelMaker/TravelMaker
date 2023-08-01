package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/myPage/OneOnOneInquiry/write")
public class myPageOneOnOneInquiryBoardWriteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/member/myPage/myPage-OneOnOneInquiryWrite.jsp";
		
		req.getRequestDispatcher(path).forward(req, resp);
	}
	
}
