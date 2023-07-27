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
import com.travelmaker.board.model.service.BoardService_phj;
import com.travelmaker.board.model.vo.Category;

@WebServlet("/Region/main")
public class Region extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String path = "/WEB-INF/views/member/Region/region1.jsp";
			
			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			dispatcher.forward(req, resp);
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int ctgrNo = Integer.parseInt(req.getParameter("region"));
			
			BoardService_phj service = new BoardService_phj();
			
			// 카테고리 정보 조회 
			List<Category> list;
			list = service.selectCategory(ctgrNo);
			
			new Gson().toJson( list, resp.getWriter() );
			
		} catch (Exception e) {
			e.printStackTrace();
		}
					
		
	}
}
