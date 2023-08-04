package com.travelmaker.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_kks;

@WebServlet("/planList/delete")
public class TravelMakerDeleteServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int planNo = Integer.parseInt(req.getParameter("planNo"));
		
		try {
			
			int result = new BoardService_kks().deletePlan(planNo);
			
			resp.getWriter().print(result);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
