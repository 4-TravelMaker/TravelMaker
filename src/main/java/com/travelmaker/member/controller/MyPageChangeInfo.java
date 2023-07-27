package com.travelmaker.member.controller;

import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Base64;

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
		
		try {
			
			// 프로필 사진 얻어오기
			int maxSize = 1024 * 1024 * 20;
			HttpSession session = req.getSession();
			String root = session.getServletContext().getRealPath("/");
			String folderPath = "/resources/images/myPageProfile/";
			String filePath = root + folderPath;
			String encoding = "UTF-8";
			
			MultipartRequest mpReq = new MultipartRequest(req, filePath, maxSize, encoding, new MyRenamePolicy());
			
			Member loginMember = (Member)session.getAttribute("loginMember");
			int memberNo = loginMember.getMemberNo();
			
			String profileImage = folderPath + mpReq.getFilesystemName("profile-upload");
			
			int delete = Integer.parseInt( mpReq.getParameter("delete") );
			
			if(delete == 1) {
				profileImage = null;
			}
			
			// ---------------------------------------------------------------------------------------------------------
			
			// 변경할 비밀번호 얻어오기(암호화)
			String pw = mpReq.getParameter("inputPw");
			MessageDigest md = MessageDigest.getInstance("SHA-512");
			byte[] bytes = pw.getBytes(Charset.forName("UTF-8"));
			md.update(bytes);
			String memberPw = Base64.getEncoder().encodeToString(md.digest());
			
			// 변경할 닉네임 얻어오기
			String memberNickname = mpReq.getParameter("nickname");
			
			// 변경할 주소 얻어오기
			String[] address = {""};
			if(mpReq.getParameterValues("address") != null) {
				address = mpReq.getParameterValues("address");
			}
			String memberAddress = null;
			if(!address[0].equals("")) {
				memberAddress = String.join(",,", address);
			}
			
			// 변경할 테마 얻어오기
			String[] theme = {""};
			if(mpReq.getParameterValues("theme") != null) {
				theme = mpReq.getParameterValues("theme");
			}
			String memberTheme = null;
			if(!theme[0].equals("")) {
				memberTheme = String.join(",", theme);
			}
			
			// 변경할 아이디/비밀번호 찾기 질문 얻어오기
			int memberQuestionCode = Integer.parseInt( mpReq.getParameter("pw-query") );
			
			// 변경할 아이디/비밀번호 찾기 답변 얻어오기
			String memberAnswer = mpReq.getParameter("pw-answer");
			
			// 변경할 정보를 담을 Member 객체 생성 + 값 세팅
			Member mem = new Member();
			
			mem.setMemberNo(memberNo);
			mem.setMemberPw(memberPw);
			mem.setMemberNickname(memberNickname);
			mem.setMemberAddress(memberAddress);
			mem.setMemberTheme(memberTheme);
			mem.setMemberQuestionCode(memberQuestionCode);
			mem.setMemberAnswer(memberAnswer);
			mem.setProfileImage(profileImage);
			
			MemberService_kks service = new MemberService_kks();
			
			int result = service.changeMyInfo(mem);
			
			if(result > 0) { // 회원 정보 수정 성공 시
				
				loginMember.setMemberPw(memberPw);
				loginMember.setMemberNickname(memberNickname);
				loginMember.setMemberAddress(memberAddress);
				loginMember.setMemberTheme(memberTheme);
				loginMember.setMemberQuestionCode(memberQuestionCode);
				loginMember.setMemberAnswer(memberAnswer);
				loginMember.setProfileImage(profileImage);
				
			}
			
			resp.sendRedirect( req.getContextPath() + "/member/myPage/changeInfo" );
				
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
