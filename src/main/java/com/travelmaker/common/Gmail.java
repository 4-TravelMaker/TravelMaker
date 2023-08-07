package com.travelmaker.common;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Gmail extends Authenticator{
	
	@Override
	   protected PasswordAuthentication getPasswordAuthentication() {
	      return new PasswordAuthentication("gksrb4000@gmail.com","bivcurtzztsyrrkk");
	   }
	
	

}
