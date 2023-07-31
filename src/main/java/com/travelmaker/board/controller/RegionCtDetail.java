package com.travelmaker.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Region/regionDetail")
public class RegionCtDetail extends HttpServlet {
	
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	String path = "/WEB-INF/views/member/Region/region3.jsp";
	
	RequestDispatcher dispatcher = req.getRequestDispatcher(path);
	dispatcher.forward(req, resp);
	
	
	}
}
