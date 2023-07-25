package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.member.model.service.MemberService_kks;

@WebServlet("/member/nicknameCheck")
public class NicknameDupCheckServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String memberNickname = req.getParameter("inputNickname");
		
		MemberService_kks service = new MemberService_kks();
		
		try {
			
			int result = service.nicknameDupCheck(memberNickname);
			
			resp.getWriter().print(result);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
