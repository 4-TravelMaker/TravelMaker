package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.member.model.service.MemberService_phj;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/member/updatePw")
public class updatePwServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String pw = req.getParameter("newPw");
		String confirmPw = req.getParameter("pwConfirm");
		
		try {
			MemberService_phj service = new MemberService_phj();
			
			int result = service.updatePw(id, pw, confirmPw);
			
			HttpSession session = req.getSession();

			String path = null;
			String message = null; 

			
			if(result > 0) { // 성공
				
				message = "성공";
				path = "login";
				
			}else {
				message = "실패";
				path = "pw";
			}
			
			session.setAttribute("message", message);

			resp.sendRedirect(path);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
