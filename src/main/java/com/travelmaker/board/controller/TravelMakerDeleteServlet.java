package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.travelmaker.board.model.service.BoardService_kks;
import com.travelmaker.board.model.vo.TravelMaker;

@WebServlet("/planList/*")
public class TravelMakerDeleteServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring( (contextPath + "/planList/").length() );
		
		try {
			
			if(command.equals("delete")) {
				
				int planNo = Integer.parseInt(req.getParameter("planNo"));
				
				int result = new BoardService_kks().deletePlan(planNo);
				
				System.out.println(result);
				
				resp.getWriter().print(result);
			}
			
			if(command.equals("selectPlanList")) {
				
				int memberNo = Integer.parseInt( req.getParameter("memberNo") );
				
				List<TravelMaker> planList = new BoardService_kks().selectPlanList(memberNo);
				
				System.out.println(planList);
				
				new Gson().toJson(planList, resp.getWriter());
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
