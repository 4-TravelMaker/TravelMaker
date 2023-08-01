package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.board.model.service.BoardService_phj;
import com.travelmaker.board.model.vo.Region;

@WebServlet("/Region/regionDetail")
public class RegionCtDetail extends HttpServlet {
	
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	try {
		
		String path = "/WEB-INF/views/member/Region/region3.jsp";
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
	}
}
