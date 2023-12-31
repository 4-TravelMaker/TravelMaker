package com.travelmaker.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.member.model.service.MemberService_ash;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/admin/selectAll")
public class selectAllServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			MemberService_ash service = new MemberService_ash();
			
			List<Member> list = service.selectAll();

			String path = "/WEB-INF/views/member/Admin/Admin-memberAdmin.jsp";
			
			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			
			req.setAttribute("list", list);
			
			dispatcher.forward(req, resp);
					
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
