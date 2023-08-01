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
import com.travelmaker.board.model.service.BoardService_hsn;
import com.travelmaker.board.model.vo.BoardDetail;
import com.travelmaker.board.model.vo.BoardImage;
import com.travelmaker.common.MyRenamePolicy;
import com.travelmaker.member.model.vo.Member;

@WebServlet("/boardNotice/write")
public class BoardNoticeWriteController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String mode = req.getParameter("mode"); 
			
			if(mode.equals("update")) {
				
				int boardNo = Integer.parseInt(req.getParameter("no"));
				
				// 게시글 상세조회 서비스를 이용해서 기존 내용 조회
				BoardDetail detail = new BoardService_hsn().selectBoardDetail(boardNo);
				
				// 개행문자 처리 해제(<br> -> \n)
				detail.setBoardContent( detail.getBoardContent().replaceAll( "<br>", "\n"));
				
				req.setAttribute("detail", detail); // JSP에서 사용할수 있도록 넘겨줌
				
			}
			
			String path = "/WEB-INF/views/member/BoardNotice/BoardNoticeWriteForm.jsp";
			req.getRequestDispatcher(path).forward(req, resp);
			
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		try {
			
			// 이미지 업로드 최대 용량
			int maxSize = 1024 * 1024 * 100; 
			
			HttpSession session = req.getSession(); // session 얻어옴
			String root = session.getServletContext().getRealPath("/"); // webapp 폴더까지 경로
			String folderPath = "/resources/images/BoardNotice/"; // 파일 저장 폴더 경로
			String filePath = root + folderPath;
			
			String encoding = "UTF-8";
			
			MultipartRequest mpReq = new MultipartRequest(req, filePath, maxSize, encoding,new MyRenamePolicy());
			
			Enumeration<String> files = mpReq.getFileNames();
			
			// 업로드된 이미지의 정보를 모아둘 List
			List<BoardImage> imageList = new ArrayList<BoardImage>();
			
			while(files.hasMoreElements()) { // 다음 요소가 있다면 true
				
				String name = files.nextElement(); // 다음 요소를 얻어옴(name값)
				
				String rename = mpReq.getFilesystemName(name); // 변경된 파일명
				String original = mpReq.getOriginalFileName(name); // 원본 파일명
				
				if(rename != null) { // 업로드 된 파일이 있을 경우
					
					BoardImage image = new BoardImage();
					
					image.setImageOriginal(original); // 원본명
					image.setImageReName(folderPath + rename); // 폴더 경로 + 변경명
					image.setImageLevel(Integer.parseInt(name)); // 이미지 위치
					
					imageList.add(image); // 리스트에 추가
					
					System.out.println(imageList);
				} // if문 종료
				
			} // while문 종료
			
			String boardTitle = mpReq.getParameter("boardTitle");
			String boardContent = mpReq.getParameter("boardContent");
			int boardCode = Integer.parseInt(mpReq.getParameter("type"));
			
			Member loginMember = (Member)session.getAttribute("loginMember");
			int memberNo = loginMember.getMemberNo();
			
			BoardDetail detail = new BoardDetail();
			
			detail.setBoardTitle(boardTitle);
			detail.setBoardContent(boardContent);
			detail.setMemberNo(memberNo);
			
			// 게시글 작성에 필요한 기본 파라미터 얻어오기 끝 ----------------------------
			
			BoardService_hsn service = new BoardService_hsn();
			
			String mode = mpReq.getParameter("mode");
			
			if(mode.equals("insert")) {
				
				int boardNo = service.insertBoard(detail, imageList, boardCode);
				
				String path = null;
				
				if(boardNo > 0) {
					session.setAttribute("message", "게시글이 등록되었습니다.");
					path = "detail?no=" + boardNo + "&type=" +boardCode;
				}else {
					session.setAttribute("message", "게시글 등록 실패");
					path = "write?mode=" + mode + "&type=" + boardCode;
				}
				
				resp.sendRedirect(path);
				
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
