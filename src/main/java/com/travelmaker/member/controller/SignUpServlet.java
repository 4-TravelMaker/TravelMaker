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

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import com.oreilly.servlet.MultipartRequest;
import com.travelmaker.common.MyRenamePolicy;
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
		
		
	    
	    
		try {
            
			// 이미지 복호화
			
			int maxSize = 1024 * 1024 * 20;
			HttpSession session = req.getSession();
			String root = session.getServletContext().getRealPath("/");
			String folderPath = "/resources/images/myPageProfile/";
			String filePath = root + folderPath;
			String encoding = "UTF-8";
			
			MultipartRequest mpReq = new MultipartRequest(req, filePath, maxSize, encoding, new MyRenamePolicy());
			
			String profileImage = folderPath + mpReq.getFilesystemName("profile");
				
			
	// ************************************************************************************************************************* //
			
			
			 String memberId = mpReq.getParameter("id");
			
			
			//암호화작업
			 String pw = mpReq.getParameter("pw");
	         MessageDigest md = MessageDigest.getInstance("SHA-512");
	         byte[] bytes = pw.getBytes(Charset.forName("UTF-8"));
	         md.update(bytes);
	         String memberPw = Base64.getEncoder().encodeToString(md.digest());
			
			
			String memberName = mpReq.getParameter("memberName");
			String memberNickname = mpReq.getParameter("memberNickname");
			
			String[] address = mpReq.getParameterValues("address");
			
			String memberAddress = null;
			
			if(!address[0].equals("") ) { 
				memberAddress = String.join(",,", address);
			}
			
			String[] theme = {""};
			if(mpReq.getParameterValues("theme") != null) {
				theme = mpReq.getParameterValues("theme");
			}
			String memberThemes = null;
			if(!theme[0].equals("")) {
				memberThemes = String.join(",", theme);
			}
			
			int memberQ = Integer.parseInt(mpReq.getParameter("pw-question"));
			String memberA = mpReq.getParameter("pw-answer");
			
			
			Member mem = new Member();
			
			mem.setMemberId(memberId);
			mem.setMemberPw(memberPw);
			mem.setMemberName(memberName);
			mem.setMemberNickname(memberNickname);
			mem.setProfileImage(profileImage);
			mem.setMemberAddress(memberAddress);
			mem.setMemberTheme(memberThemes);
			mem.setMemberQuestionCode(memberQ);
			mem.setMemberAnswer(memberA);
			
					
	    	MemberService_lhk service = new MemberService_lhk();
	    	
	    	
		    int result = service.signUp(mem);
		    
		    session = req.getSession();
		    
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
