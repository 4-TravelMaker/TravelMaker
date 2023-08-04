package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.board.model.service.BoardService_kks;
import com.travelmaker.board.model.vo.TravelMaker;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/makePlan")
public class TravelMakerServlet extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			if(req.getParameter("no") != null) {
				
				int planNo = Integer.parseInt(req.getParameter("no"));
				
				HttpSession session = req.getSession();
				Member loginMember = (Member)session.getAttribute("loginMember");
				int memberNo = loginMember.getMemberNo();
				
				TravelMaker plan = new BoardService_kks().selectPlan(planNo, memberNo);
				
				req.setAttribute("plan", plan);
				
			}
			
			req.getRequestDispatcher("/WEB-INF/views/member/Maker/travelMaker.jsp").forward(req, resp);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String mode = req.getParameter("mode");
		
		String planTitle = req.getParameter("inputTitle");
		String planContent = req.getParameter("columnContent");
		String thumbnail = req.getParameter("thumbnail");
		int dateLevel = Integer.parseInt(req.getParameter("dateValue"));
		
		HttpSession session = req.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		int memberNo = loginMember.getMemberNo();
		
		TravelMaker tm = new TravelMaker();
		
		tm.setPlanTitle(planTitle);
		tm.setPlanContent(planContent);
		tm.setThumbnail(thumbnail);
		tm.setDateLevel(dateLevel);
		tm.setMemberNo(memberNo);
		
		try {
			
			String message = null;
			String path = null;
			
			if(mode.equals("insert")) {
				
				int result = new BoardService_kks().travelMake(tm);
				
				if(result > 0) {
					
					message = "여행 계획을 저장했습니다.";
					path = req.getContextPath() + "/planList";
					
				} else {
					
					message = "여행 계획 저장에 실패했습니다.";
					path = req.getHeader("referer");
				}

			}
			
			if(mode.equals("update")) {
				
				int planNo = Integer.parseInt(req.getParameter("no"));
				tm.setPlanNo(planNo);
				
				int result = new BoardService_kks().travelUpdate(tm);
				
				if(result > 0) {
					
					message = "여행 계획을 저장했습니다.";
					path = req.getContextPath() + "/planList";
					
				} else {
					
					message = "여행 계획 저장에 실패했습니다.";
					path = req.getHeader("referer");
				}
			}
			
			session.setAttribute("message", message);
			resp.sendRedirect(path);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
