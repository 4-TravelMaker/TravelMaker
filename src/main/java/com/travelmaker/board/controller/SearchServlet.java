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

@WebServlet("/searchList")
public class SearchServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			
			String searchparam = req.getParameter("searchParam");
			System.out.println("파라미터 : " + searchparam);
			
			BoardService_lhk service = new BoardService_lhk();
			
			List<Board> boardList = service.searchList(searchparam);
			
			System.out.println(boardList);
			
			req.setAttribute("boardList", boardList);
			

			String path = "/WEB-INF/views/member/Search/search.jsp";
			
			req.getRequestDispatcher(path).forward(req, resp);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
