package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_kks;

@WebServlet("/travelReview/list")
public class TravelReviewBoardListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int type = Integer.parseInt(req.getParameter("type"));
			
			int cp = 1;
			
			if(req.getParameter("cp") != null) {
				cp = Integer.parseInt(req.getParameter("cp"));
			}
			
			BoardService_kks service = new BoardService_kks();
			
			Map<String, Object> map = null;
			
			if(req.getParameter("key") == null) {
				
				map = service.selectBoardList(type, cp);
				
			} else {
				
				String key = req.getParameter("key");
				String query = req.getParameter("query");
				
				map = service.searchBoardList(type, cp, key, query);
				
			}
			
			req.setAttribute("map", map);
			
			String path = "/WEB-INF/views/member/Review/travelReviewBoardList.jsp";
			req.getRequestDispatcher(path).forward(req, resp);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
