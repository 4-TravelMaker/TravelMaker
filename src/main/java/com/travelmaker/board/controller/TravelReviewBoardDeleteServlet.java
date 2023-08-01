package com.travelmaker.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travelmaker.board.model.service.BoardService_kks;

@WebServlet("/travelReview/delete")
public class TravelReviewBoardDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int type = Integer.parseInt( req.getParameter("type") );
			int boardNo = Integer.parseInt( req.getParameter("no") );
			
			int result = new BoardService_kks().deleteBoard(boardNo);
			
			HttpSession session = req.getSession();
			String path = null;
			String message = null;
			
			if(result > 0) {
				
				path = "list?type=" + type;

				message = "게시글이 삭제되었습니다.";
				
			} else {
				
				path = req.getHeader("referer");
				message = "게시글 삭제에 실패했습니다.";
			}
			
			session.setAttribute("message", message);
			resp.sendRedirect(path);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
