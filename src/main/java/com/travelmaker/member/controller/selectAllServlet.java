package com.travelmaker.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.member.model.service.MemberService;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/admin/member/admin")
public class selectAllServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			MemberService service = new MemberService();
			
			List<Member> memberList = service.selectAll();
			
			String path = "/WEB-INF/views/member/Admin-memberAdmin";
			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			
			req.setAttribute("list", memberList);
			
			dispatcher.forward(req, resp);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
