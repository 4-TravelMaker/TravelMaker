package com.travelmaker.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import com.travelmaker.member.model.service.MemberService_ash;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/admin/*")
public class selectMemberController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring(  (contextPath + "/admin/").length()  );
		
		MemberService_ash service = new MemberService_ash();

		
		try {
			// 회원 아이디 검색
			if(command.equals("selectOne")) {
				String memberId = req.getParameter("memberId");

				Member member = service.selectOne(memberId);
				
				new Gson().toJson(member, resp.getWriter());
			}
			
			// 회원 탈퇴 처리
			if(command.equals("memberSecession")) {
				int memberNo = Integer.parseInt(req.getParameter("memberNo"));
			
				int result = service.memberSecession(memberNo);
				
				new Gson().toJson(result, resp.getWriter());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		
	}
	
	
}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}