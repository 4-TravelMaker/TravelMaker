package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_lhk;
import com.travelmaker.board.model.vo.Board;

@WebServlet("/board/searchList")
public class SearchServlet extends HttpServlet {
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			
			String searchparam = req.getParameter("searchParam");
			String travelInfo = req.getParameter("travelInfo");
			System.out.println("파라미터 : " + searchparam);
			
			int cp = 1;
			BoardService_lhk service = new BoardService_lhk();
			Map<String, Object> map = null;
			
			if(req.getParameter("cp") != null) {
				cp = Integer.parseInt(req.getParameter("cp"));
			}
			
			if(travelInfo != null) {
				if(!travelInfo.equals("") ) {
					
					if(travelInfo.equals("travelInfo")) {
						
						map = service.travelInfos(searchparam, cp);
						
				} else if(travelInfo.equals("travelReview")){
						
						map =  service.travelReview(searchparam, cp);
					}
				}else {
					
					map = service.searchList(searchparam, cp);
				}
			} else {
				
				map = service.searchList(searchparam, cp);
			}
			
			
			
			System.out.println(map);
			req.setAttribute("travelInfo", travelInfo);
			req.setAttribute("map", map);
			//req.setAttribute("boardList", boardList);
			

			String path = "/WEB-INF/views/member/Search/search.jsp";
			
			req.getRequestDispatcher(path).forward(req, resp);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
