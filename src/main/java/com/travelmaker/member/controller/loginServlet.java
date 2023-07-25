package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.member.model.service.MemberService_ksw;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/member/login")
public class loginServlet extends HttpServlet{
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/member/SignUp/signUp.jsp";
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		
		dispatcher.forward(req, resp);
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String path = "";
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		
		String inputId = req.getParameter("inputId");
		String inputPw = req.getParameter("inputPw");
		

		Member mem = new Member();
		mem.setMemberId(inputId);
		mem.setMemberPw(inputPw);
		
		try {
			
			MemberService_ksw service = new MemberService_ksw();
			
			Member loginMember = service.login(mem);
			
			HttpSession session = req.getSession();
			
			if(loginMember != null){
				session.setAttribute("loginMember", loginMember);
				
				session.setMaxInactiveInterval(3600);
			}
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
	
	}
	
	
	
}
