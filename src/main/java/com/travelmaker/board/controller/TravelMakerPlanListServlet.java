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

@WebServlet("/planList")
public class TravelMakerPlanListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		int memberNo = loginMember.getMemberNo();
		
		try {
			
			List<TravelMaker> planList = new BoardService_kks().selectPlanList(memberNo);
			
			req.setAttribute("planList", planList);
			
			req.getRequestDispatcher("/WEB-INF/views/member/Maker/planList.jsp").forward(req, resp);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
}
