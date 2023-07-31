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
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			
			String id = req.getParameter("id");
			String pw = req.getParameter("editInput1");
			
			int result = new MemberService_phj().updatePw(id,pw);
			
			HttpSession session = req.getSession();
			String path = null;
			String message = null; 
			
			if(result>0) { // 성공
				message = "비밀번호가 수정되었습니다.";
				path = "login";
				
			}else {  // 실패
				message = "비밀번호 수정에 실패했습니다.";
				path = req.getHeader("referer");;
			}
			
			session.setAttribute("message", message);
			
			resp.sendRedirect(path);			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
