package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.member.model.service.MemberService_lhk;

@WebServlet("/member/idDupcheck")
public class idDupCheckServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try { 
			String memberId = req.getParameter("id");
			
			MemberService_lhk service = new MemberService_lhk();
			
			int result = service.idDupcheck(memberId);
			
			resp.getWriter().print(result);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	
	
	}

}
