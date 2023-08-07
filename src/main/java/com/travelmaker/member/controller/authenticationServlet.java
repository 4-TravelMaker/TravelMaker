package com.travelmaker.member.controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelmaker.common.Gmail;
import com.travelmaker.common.SHA256;

@WebServlet("/member/authentication")
public class authenticationServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int ranCode = new SHA256().getSHA256();
			
			int ranConfirm = 0;
			
			String host = "http://localhost:8080/TravelMaker/";
            String from = "gksrb4000@gmail.com";
            String to = req.getParameter("inputEmail");
            String subject = "(주)TravelMaker 인증 메일 입니다.";
            String content = "해당 코드를 입력하여 본인확인을 진행하세요." +
                          "<br>" + ranCode;
            
            
            System.out.println("메일 전송 주소 : " + to);
            
            // 이메일 전송 : SMTP 이용을 위함
            Properties p = new Properties();
            p.put("mail.smtp.user", from);
            p.put("mail.smtp.host", "smtp.googlemail.com"); // google SMTP 주소
            p.put("mail.smtp.port", "465");
            p.put("mail.smtp.starttls.enable", "true");
            p.put("mail.smtp.auth", "true");
            p.put("mail.smtp.debug", "true");
            p.put("mail.smtp.socketFactory.port", "465");
            p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            p.put("mail.smtp.socketFactory.fallback", "false");
            p.put("mail.smtp.ssl.protocols", "TLSv1.2"); // 추가된 코드
            p.put("mail.smtp.ssl.enable", "true");  // 추가된 코드

            Authenticator auth = new Gmail();
            
            Session ses = Session.getInstance(p, auth);
            ses.setDebug(true);
            MimeMessage msg = new MimeMessage(ses);
            msg.setSubject(subject);
            Address fromAddr = new InternetAddress(from);
            msg.setFrom(fromAddr);
            Address toAddr = new InternetAddress(to);
            msg.addRecipient(Message.RecipientType.TO, toAddr);
            msg.setContent(content, "text/html;charset=UTF8");
            Transport.send(msg);
         
            System.out.println("인증번호 난수 : " + ranCode);
            
            ranConfirm = ranCode;
            
            
            resp.getWriter().print(ranConfirm);
            
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}

}
