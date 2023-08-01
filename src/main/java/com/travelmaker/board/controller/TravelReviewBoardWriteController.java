package com.travelmaker.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.travelmaker.board.model.service.BoardService_kks;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.board.model.vo.BoardImage;
import com.travelmaker.common.MyRenamePolicy;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/travelReview/write")
public class TravelReviewBoardWriteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
//			String mode = req.getParameter("mode");
//			
//			if(mode.equals("update")) {
//				
//				int boardNo = Integer.parseInt( req.getParameter("no") );
//				
//				BoardDetail detail = new BoardService_kks().selectBoardDetail(boardNo);
//				
//				detail.setBoardContent( detail.getBoardContent().replaceAll("<br>", "\n") );
//				
//				req.setAttribute("detail", detail);
//			}
			
			String path = "/WEB-INF/views/member/Review/writeForm.jsp";
			req.getRequestDispatcher(path).forward(req, resp);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int maxSize = 1024 * 1024 * 100;
			
			HttpSession session = req.getSession();
			String root = session.getServletContext().getRealPath("/");
			String folderPath = "/resources/images/Review/";
			String filePath = root + folderPath;
			
			String encoding = "UTF-8";
			
			MultipartRequest mpReq = new MultipartRequest(req, filePath, maxSize, encoding, new MyRenamePolicy());
			
			Enumeration<String> files = mpReq.getFileNames();
			
			List<BoardImage> imageList = new ArrayList<BoardImage>();
			
			while(files.hasMoreElements()) {
				
				String name = files.nextElement();
				
				String rename = mpReq.getFilesystemName(name);
				String original = mpReq.getOriginalFileName(name);
				
				if(rename != null) {
					
					BoardImage image = new BoardImage();
					
					image.setImageOriginal(original);
					image.setImageReName(folderPath + rename);
					image.setImageLevel( Integer.parseInt(name) );
					
					imageList.add(image);
				}
			}
			
			String boardTitle = mpReq.getParameter("boardTitle");
			String boardContent = mpReq.getParameter("boardContent");
			int boardCode = Integer.parseInt( mpReq.getParameter("type") );
			
			Member loginMember = (Member)session.getAttribute("loginMember");
			int memberNo = loginMember.getMemberNo();
			
			BoardDetail detail = new BoardDetail();
			detail.setBoardTitle(boardTitle);
			detail.setBoardContent(boardContent);
			detail.setMemberNo(memberNo);
			
			String mode = mpReq.getParameter("mode");
			
			// 파라미터 끝 //
			
			BoardService_kks service = new BoardService_kks();
			
			if(mode.equals("insert")) {
				
				int boardNo = service.insertBoard(detail, imageList, boardCode);
				
				String path = null;
				
				if(boardNo > 0) { // 성공
					session.setAttribute("message", "게시글이 등록되었습니다.");
					// detail?no=2000&type=2
					path = "detail?no=" + boardNo + "&type=" + boardCode;
					
				} else { // 실패
					session.setAttribute("message", "게시글 등록 실패");
					path = "write?mode=" + mode + "&type=" + boardCode;
				}
				
				resp.sendRedirect(path);
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
