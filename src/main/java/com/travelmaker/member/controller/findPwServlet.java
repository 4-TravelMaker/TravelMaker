package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.travelmaker.member.model.service.MemberService_phj;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/member/findPw")
public class findPwServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = "/WEB-INF/views/member/Find/findPw.jsp";
		
		req.getRequestDispatcher(path).forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			String inputId = req.getParameter("inputId");
			String inputAnser = req.getParameter("inpuutAnswer");
			int questionNo = Integer.parseInt(req.getParameter("idQuestion"));
			
			Member mem = new Member();
			
			mem.setMemberId(inputId);
			mem.setMemberAnswer(inputAnser);
			mem.setMemberQuestionCode(questionNo);
			
			MemberService_phj service = new MemberService_phj();
			
			Member member = service.selectPw(mem);
			
			new Gson().toJson(member, resp.getWriter());
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	

}
