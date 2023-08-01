package com.travelmaker.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/theme/*")
public class ThemeKeywordServlet extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring(  (contextPath + "/theme/").length()  );
	
		
		try {
			if(command.equals("activity")) {
				String path = "/WEB-INF/views/member/Theme/ThemeActivity.jsp";
				req.getRequestDispatcher(path).forward(req, resp);
			}
			
			if(command.equals("cafe")) {
				String path = "/WEB-INF/views/member/Theme/ThemeCafe.jsp";
				req.getRequestDispatcher(path).forward(req, resp);
			}
			
			if(command.equals("coupleTrip")) {
				String path = "/WEB-INF/views/member/Theme/ThemeCoupleTrip.jsp";
				req.getRequestDispatcher(path).forward(req, resp);
			}
			
			if(command.equals("familyTrip")) {
				String path = "/WEB-INF/views/member/Theme/ThemeFamilyTrip.jsp";
				req.getRequestDispatcher(path).forward(req, resp);
			}
			
			if(command.equals("trainTrip")) {
				String path = "/WEB-INF/views/member/Theme/ThemeTrainTrip.jsp";
				req.getRequestDispatcher(path).forward(req, resp);
			}
			
			if(command.equals("pet")) {
				String path = "/WEB-INF/views/member/Theme/ThemePet.jsp";
				req.getRequestDispatcher(path).forward(req, resp);
			}
			
			if(command.equals("camPing")) {
				String path = "/WEB-INF/views/member/Theme/ThemeCamping.jsp";
				req.getRequestDispatcher(path).forward(req, resp);
			}
			
			if(command.equals("famousRestaurant")) {
				String path = "/WEB-INF/views/member/Theme/ThemeFamousRestaurant.jsp";
				req.getRequestDispatcher(path).forward(req, resp);
			}
			
			if(command.equals("sunset")) {
				String path = "/WEB-INF/views/member/Theme/ThemeSunset.jsp";
				req.getRequestDispatcher(path).forward(req, resp);
			}
			
			if(command.equals("nightVeiw")) {
				String path = "/WEB-INF/views/member/Theme/ThemeNightView.jsp";
				req.getRequestDispatcher(path).forward(req, resp);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
	}
}
