package com.travelmaker.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.travelmaker.common.MyRenamePolicy;
import com.travelmaker.member.model.service.MemberService_kks;
import com.travelmaker.member.model.vo.Member;


@WebServlet("/member/myPage/changeInfo")
public class MyPageChangeInfo extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberService_kks service = new MemberService_kks();
		
		int memberNo = 1;
		
		try {
			Member loginMember = service.autoLogin(memberNo);
			
			if(loginMember != null) {
				
				HttpSession session = req.getSession();
				
				session.setAttribute("loginMember", loginMember);
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/views/member/myPage/myPage-changeInfo.jsp";
		req.getRequestDispatcher(path).forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			
		String memberPw = req.getParameter("inputPw");
		String memberNickname = req.getParameter("nickname");
		String[] address = req.getParameterValues("address");
		
		String memberAddress = null;
		
		if(!address[0].equals("")) {
			memberAddress = String.join(",,", address);
		}
		
		String[] theme = req.getParameterValues("theme");
		
		String memberTheme = null;
		
		if(!theme[0].equals("")) {
			memberTheme = String.join(",", theme);
		}
		
		int memberQuestionCode = Integer.parseInt( req.getParameter("pw-query") );
		String memberAnswer = req.getParameter("pw-answer");
		
		System.out.println(memberPw);
		System.out.println(memberNickname);
		System.out.println(memberAddress);
		System.out.println(memberTheme);
		System.out.println(memberQuestionCode);
		System.out.println(memberAnswer);
			
		// 프로필 사진 얻어오기
//		int maxSize = 1024 * 1024 * 20;
//		HttpSession session = req.getSession();
//		String root = session.getServletContext().getRealPath("/");
//		String folderPath = "/resources/images/myPageProfile/";
//		String filePath = root + folderPath;
//		String encoding = "UTF-8";
//			
//		MultipartRequest mpReq = new MultipartRequest(req, filePath, maxSize, encoding, new MyRenamePolicy());
//		
//		Member loginMember = (Member)session.getAttribute("loginMember");
//		int memberNo = loginMember.getMemberNo();
//		
//		System.out.println(mpReq.getFilesystemName("profileImage"));
//		
//		String profileImage = folderPath + mpReq.getFilesystemName("profileImage");
//		
//		int delete = Integer.parseInt( mpReq.getParameter("delete") );
//		
//		if(delete == 1) {
//			profileImage = null;
//		}
			
		MemberService_kks service = new MemberService_kks();
		
		try {
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
