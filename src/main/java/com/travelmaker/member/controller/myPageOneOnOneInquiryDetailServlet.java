package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_ash;
import com.travelmaker.board.model.vo.BoardDetail;

@WebServlet("/myPage/OneOnOneInquiry/detail")
public class myPageOneOnOneInquiryDetailServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {

			int boardNo = Integer.parseInt(req.getParameter("no"));
			
			BoardService_ash service = new BoardService_ash();
			
			// 게시글 상세 조회
			BoardDetail detail = service.selectOneOnOneInquiryDetail(boardNo);
			
			req.setAttribute("detail", detail);
			
			String path = "/WEB-INF/views/member/myPage/myPage-OneOnOneInquiryDetail.jsp";
			
			req.getRequestDispatcher(path).forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
