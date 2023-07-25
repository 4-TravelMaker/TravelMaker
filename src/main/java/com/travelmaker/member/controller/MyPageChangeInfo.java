package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.member.model.service.MemberService_kks;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/member/myPage/changeInfo")
public class MyPageChangeInfo extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberService_kks service = new MemberService_kks();
		
		int memberNo = 1;
		
		try {
			Member loginMember = service.autoLogin(memberNo);
			
			if(loginMember != null) {
				
				HttpSession session = req.getSession();
				
				session.setAttribute("loginMember", loginMember);
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/views/member/myPage/myPage-changeInfo.jsp";
		req.getRequestDispatcher(path).forward(req, resp);
		
	}

}
