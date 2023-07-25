package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.member.model.service.MemberService_lhk;
import com.travelmaker.member.model.vo.Member;


@WebServlet("/member/signUp")
public class SignUpServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/member/SignUp/signUp.jsp";
		
		req.getRequestDispatcher(path).forward(req, resp);
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String memberId = req.getParameter("id");
		String memberPw = req.getParameter("pw");
		String memberName = req.getParameter("memberName");
		String memberNickname = req.getParameter("memberNickname");
		String profileImg = req.getParameter("profile") ;
		
		String[] address = req.getParameterValues("address");
		
		String memberAddress = null;
	    
    	if(!address[0].equals("") ) { 
	    	memberAddress = String.join(",,", address);
    	}
    	
    	String[] memberThema = req.getParameterValues("theme");
    	
    	String memberThemas = null;
    	if(!memberThema[0].equals("") ) { 
    		memberThemas = String.join(",", memberThema);
    	}
    	
    	int memberQ = Integer.parseInt(req.getParameter("pw-question"));
    	String memberA = req.getParameter("pw-answer");
    	
    	
    	Member mem = new Member();
	    
	    mem.setMemberId(memberId);
	    mem.setMemberPw(memberPw);
	    mem.setMemberName(memberName);
	    mem.setMemberNickname(memberNickname);
	    mem.setProfileImage(profileImg);
	    mem.setMemberAddress(memberAddress);
	    mem.setMemberTheme(memberThemas);
	    mem.setMemberQuestionCode(memberQ);
	    mem.setMemberAnswer(memberA);
	    
	    
	    
		try {
					
	    	MemberService_lhk service = new MemberService_lhk();
	    	
	    	
		    int result = service.signUp(mem);
		    
		    HttpSession session = req.getSession();
		    
		    if(result > 0 ) { 
		    	session.setAttribute("message","회원 가입 성공 !!");
		    } else { 
		    	session.setAttribute("message", "회원 가입 실패...");
		    		
		    }
	    
		    resp.sendRedirect(req.getContextPath());
		    	
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
		
		
		
		
		
		
		
		
	}

}
