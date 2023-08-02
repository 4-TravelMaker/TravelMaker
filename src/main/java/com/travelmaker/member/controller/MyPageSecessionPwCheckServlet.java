package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.member.model.service.MemberService_kks;

@WebServlet("/myPage/pwCheck")
public class MyPageSecessionPwCheckServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String inputPw = req.getParameter("inputPw");
		int memberNo = Integer.parseInt(req.getParameter("memberNo"));
		
		System.out.println(inputPw);
		System.out.println(memberNo);
		
		try {
			
			int result = new MemberService_kks().memberPwCheck(inputPw, memberNo);
			
			System.out.println(result);
			
			resp.getWriter().print(result);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
