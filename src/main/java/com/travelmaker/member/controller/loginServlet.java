package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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
		
		String path = "/WEB-INF/views/member/Login/login.jsp";
		
		req.getRequestDispatcher(path).forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
				
		String inputId = req.getParameter("inputId"); // 위치홀더를 파라미터로 받아오겠다 =>  
		String inputPw = req.getParameter("inputPw"); //파라미터는 VS코드에 JSP에서 저 위치에 name값을 파라미터로 받아온다.
//		String saveId = req.getParameter("saveId");


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
				
				Cookie c = new Cookie("saveId", inputId);
				
				if(req.getParameter("saveId") != null) {
					
					c.setMaxAge(60*60*24*30);
				}else {
					
					c.setMaxAge(0);
				}
				c.setPath(req.getContextPath()+"/member/login");
				resp.addCookie(c);
				
			}else {
				session.setAttribute("message", "아이디 또는 비밀번호가 일치하지 않습니다.");
			}
			
			resp.sendRedirect( req.getContextPath() );
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
	
	}
}
