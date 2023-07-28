package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.board.model.service.BoardService_ash;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/admin/OneOnOneInquiry/list")
public class OneOnOneInquiryListServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			Member mem = new Member();
			mem.setMemberNo(1);
			mem.setMemberId("user01");
			mem.setMemberPw("pass01!");
			mem.setMemberNickname("유저일");
			mem.setProfileImage("1");
			mem.setMemberAddress("04540,,서울특별시 강남구 테헤란로 14길 6,,5층");
			mem.setMemberTheme("1");
			mem.setMemberQuestionCode(1);
			mem.setMemberAnswer("가족");
			mem.setEnrollDate("23/07/24");
			mem.setSecessionFlag("N");
			mem.setAdminFlag("Y");
			
			HttpSession session = req.getSession();
			
			session.setAttribute("loginMember", mem);
			
			int type = Integer.parseInt(req.getParameter("type"));

			int cp = 1;
			
			if(req.getParameter("cp") != null) {
				cp = Integer.parseInt(req.getParameter("cp"));
			}
			
			BoardService_ash service = new BoardService_ash();
			
			Map<String, Object> map = service.selectOneOnOneInquiryList(type, cp);
			
			req.setAttribute("map", map);
			
			String path = "/WEB-INF/views/member/Admin/Admin-OneOnOneInquirySelect.jsp";
			
			RequestDispatcher dispatcher = req.getRequestDispatcher(path);
			dispatcher.forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
