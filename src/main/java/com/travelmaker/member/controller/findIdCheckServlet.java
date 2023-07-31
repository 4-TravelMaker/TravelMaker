package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.member.model.service.MemberService_lhk;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/member/findIdCheck")
public class findIdCheckServlet extends HttpServlet  {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		
		
		
		try {
			
			String memberName = req.getParameter("nameInput");
			
			System.out.println(memberName);
			int numberQ = Integer.parseInt(req.getParameter("ism-Select"));
			String memberA = req.getParameter("answer-Input");
			
			
			
			MemberService_lhk service = new MemberService_lhk();
			
			Member mem = new Member();
			
			mem.setMemberName(memberName);
			mem.setMemberQuestionCode(numberQ);
			mem.setMemberAnswer(memberA);
			
			String checkId = service.selectCheckId(mem);
			
			resp.getWriter().print(checkId);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
