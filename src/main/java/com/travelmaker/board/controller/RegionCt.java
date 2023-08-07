package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_phj;
import com.travelmaker.board.model.vo.Category;
import com.travelmaker.board.model.vo.Region;
import com.travelmaker.member.model.service.MemberService_phj;


@WebServlet("/Region/*")
public class RegionCt extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring(  (contextPath + "/Region/").length()  );
		
		try {
			
			if(command.equals("ctgr")) { 
				
				int ctgrNo = Integer.parseInt(req.getParameter("ctgr"));
				String name = req.getParameter("name");
				
				BoardService_phj service = new BoardService_phj();
				
				Map<String, Object> map = service.selectRegion(ctgrNo);
				
				req.setAttribute("map", map);
				
				String path = "/WEB-INF/views/member/Region/region2.jsp";
				
				RequestDispatcher dispatcher = req.getRequestDispatcher(path);
				dispatcher.forward(req, resp);
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
	}
}
