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

@WebServlet("/myPage/secession")
public class MyPageSecessionServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/member/myPage/myPage-secession.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			
			HttpSession session = req.getSession();
			
			Member loginMember = (Member)session.getAttribute("loginMember");
			
			int memberNo = loginMember.getMemberNo();
			
			int result = new MemberService_kks().memberSecession(memberNo);
			
			String message = null;
			
			if(result > 0) {
				
				message = "회원 탈퇴가 완료되었습니다.";
				
			} else {
				
				message = "회원 탈퇴 실패";
			}
			
			session.setAttribute("message", message);
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
