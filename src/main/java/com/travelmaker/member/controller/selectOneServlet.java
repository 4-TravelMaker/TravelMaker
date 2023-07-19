package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.travelmaker.member.model.service.MemberService_ash;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/admin/memberSelectOne")
public class selectOneServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 파라미터 얻어오기(아이디)
		String memberId = req.getParameter("memberId");
		
		try {
			
			MemberService_ash service = new MemberService_ash();
			
			//Member member = service.selectOne(memberId);
			
			//new Gson().toJson(member, resp.getWriter());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
