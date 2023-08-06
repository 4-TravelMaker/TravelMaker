package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_lhk;
import com.travelmaker.board.model.vo.Board;

@WebServlet("/board/searchLists")
public class SearchListServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		try {
//			
//			String searchParam = req.getParameter("searchParam");
//			String travelInfo = req.getParameter("travelInfo");
//			
//			BoardService_lhk service = new BoardService_lhk();
//			
//			List<Board> boardList = null;
//			
//			if(!travelInfo.equals("")) {
//				
//				if(travelInfo.equals("travelInfo")) {
//					
//					 boardList = service.travelInfos(searchParam);
//					
//			} else if(travelInfo.equals("travelReview")){
//					
//					 boardList =  service.travelReview(searchParam);
//				}
//			} else {
//				
//				 	boardList =  service.travelAll(searchParam);
//			}
//			
//			req.setAttribute("boardList", boardList);
//			req.setAttribute("travelInfo", travelInfo);
//			
//			String path = "/WEB-INF/views/member/Search/search.jsp";
//			
//			req.getRequestDispatcher(path).forward(req, resp);
//			
//		} catch (Exception e) {
//			
//			e.printStackTrace();
//		}
//		
		
		
		
		
		
	}

}
